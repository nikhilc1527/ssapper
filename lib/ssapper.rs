pub mod logging;

use std::{
    collections::VecDeque,
    hash::{DefaultHasher, Hash, Hasher},
    io::{BufRead, BufReader, Write},
    path::Path,
    process::{ChildStdin, ChildStdout},
    sync::{
        mpsc::{channel, Receiver, Sender},
        OnceLock,
    },
    thread::scope,
    time::{Duration, Instant},
};

use chrono::Local;
use smtlib::sexp::parse;

use rusqlite::{params, Connection, Error as RusqliteError, OpenFlags};
use thiserror::Error;

use smtlib::{proc::SmtProc, sexp::Sexp};

use serde::{Deserialize, Serialize};

/// sexp that depends on the hash of the current sexp as well as of all previous queries
#[derive(Debug, Serialize, Deserialize, Hash, Eq, PartialEq, Clone)]
pub struct HashedSexp {
    hash: u64,
    sexp: Sexp,
}

pub static Z3_CHECKSUM: OnceLock<String> = OnceLock::new();

impl HashedSexp {
    fn new(prev_hash: u64, sexp: Sexp) -> Self {
        let checksum = Z3_CHECKSUM.get();

        let mut hasher = DefaultHasher::new();
        prev_hash.hash(&mut hasher);
        sexp.hash(&mut hasher);
        checksum.hash(&mut hasher);
        let hash = hasher.finish();
        Self { hash, sexp }
    }
}

pub type Result<T> = std::result::Result<T, Error>;

#[derive(Debug, Error)]
pub enum Error {
    #[error("rusqlite database error")]
    Rusqlite(#[from] RusqliteError),

    #[error("solver error")]
    Solver(#[from] smtlib::proc::SolverError),

    #[error("Parser error")]
    Parser(#[from] peg::error::ParseError<peg::str::LineCol>),

    #[error("other error")]
    Other(String),
}

impl PartialEq for Error {
    fn eq(&self, other: &Self) -> bool {
        if let Error::Rusqlite(r1) = self {
            if let Error::Rusqlite(r2) = other {
                r1 == r2
            } else {
                false
            }
        } else if let Error::Parser(p1) = self {
            if let Error::Parser(p2) = other {
                p1 == p2
            } else {
                false
            }
        } else if let Error::Solver(_) = self {
            false
        } else {
            unreachable!()
        }
    }
}

pub fn open_db<P: AsRef<Path>>(
    path: P,
    flags: OpenFlags,
) -> std::result::Result<Connection, rusqlite::Error> {
    let conn = Connection::open_with_flags(path, flags)?;

    conn.execute_batch("PRAGMA journal_mode = WAL")?;

    Ok(conn)
}

pub fn init_cache(conn: &Connection) -> std::result::Result<(), rusqlite::Error> {
    conn.execute(
        "CREATE TABLE IF NOT EXISTS computations (
                 hash TEXT PRIMARY KEY,
                 result_value TEXT NOT NULL
                 )",
        [],
    )?;

    conn.execute(
        "CREATE INDEX IF NOT EXISTS idx_computations_hash ON computations (hash)",
        [],
    )?;

    Ok(())
}

/// asks the database if the hashed sexp exists in the table
fn query_db(conn: &Connection, s: &HashedSexp) -> Option<String> {
    let mut query_stmt = conn
        .prepare_cached("SELECT result_value FROM computations WHERE hash = ?1")
        .expect("couldnt get response from db");
    query_stmt
        .query_row(params![s.hash.to_string()], |row| row.get(0))
        .ok()
}

/// current state of the parser
struct ParserState {
    linenum: usize,
    running: String,
    par_balance: usize,
    line_has_stuff: bool,
}

#[derive(Debug)]
struct SendCommand {
    sexp: HashedSexp,
}

/// get response from child process, reading until the line that says DONE
fn get_response(
    child: &mut BufReader<ChildStdout>,
) -> std::result::Result<(String, i32), std::io::Error> {
    // buf accumulates the entire response, which is read line-by-line
    // looking for the DONE marker.
    let mut buf = String::new();
    loop {
        let last_end = buf.len();
        // n is the number of bytes read (that is, the length of this line
        // including the newline)
        let n = child.read_line(&mut buf);
        let n = match n {
            Ok(n) => n,
            Err(err) => match err.kind() {
                std::io::ErrorKind::BrokenPipe => return Err(err),
                o => panic!("{o}"),
            },
        };
        if n == 0 {
            return Err(std::io::Error::new(
                std::io::ErrorKind::BrokenPipe,
                "couldnt get from child",
            ));
        }
        // last line, without the newline
        let last_line = buf[last_end..last_end + n].trim_end();

        if let Some(stripped) = last_line.strip_prefix("DONE") {
            let a = stripped.parse::<i32>().expect("couldnt get a");
            let response = buf[..last_end].trim_end();
            return Ok((response.to_string(), a));
        }
    }
}

/// type of single query
#[derive(Debug)]
pub struct Query {
    pub query: Option<HashedSexp>,
    pub result: Option<String>,
    pub start_time: Option<Instant>,
    pub end_time: Option<Instant>,
}

pub struct Response {
    pub input: Sexp,
    pub output: String,
    pub time_taken: Duration,
}

/// structure holding everything that we want to be keeping track of in terms of performance
pub struct PerfLog {
    pub cache_misses: usize,
    pub cache_hits: usize,
    pub queries: Vec<Response>,
}

enum Received {
    CacheHit(Sexp, String),
    CacheMiss(HashedSexp, Instant),
    Response(String, Instant),
}

fn merger(rx: Receiver<Received>) -> (PerfLog, Vec<(String, String)>) {
    let mut queue_cache = VecDeque::new();
    let mut queue_response = VecDeque::new();
    let mut queries = Vec::new();
    let mut cache_hits = 0;
    let mut cache_misses = 0;
    let mut to_cache = Vec::new();

    while let Ok(rec) = rx.recv() {
        match rec {
            Received::Response(a, b) => queue_response.push_back((a, b)),
            Received::CacheMiss(s, i1) => queue_cache.push_back((s, i1)),
            Received::CacheHit(s, r) => {
                if !r.is_empty() {
                    println!("{r}");
                    cache_hits += 1;
                }
                queries.push(Response {
                    input: s,
                    output: r,
                    time_taken: Duration::ZERO,
                });
            }
        }
        if !queue_cache.is_empty() && !queue_response.is_empty() {
            let (s, i1) = queue_cache.pop_front().unwrap();
            let (r, i2) = queue_response.pop_front().unwrap();

            if !r.is_empty() {
                println!("{r}");
                cache_misses += 1;
            }
            queries.push(Response {
                input: s.sexp,
                output: r.to_string(),
                time_taken: i2 - i1,
            });

            to_cache.push((s.hash.to_string(), r));
        }
    }

    (
        PerfLog {
            cache_hits,
            cache_misses,
            queries,
        },
        to_cache,
    )
}

/// given input stream, a process, and a possible connection to a database, run the process and return the output of the process while caching the results in the database
pub fn parse_and_send_async(
    inlines: Box<dyn BufRead>,
    proc: SmtProc,
    conn: Option<&str>,
) -> Result<PerfLog> {
    let mut inlines = inlines;

    let (tx, rx) = channel();
    let (mergetx, mergerx) = channel();

    let (childin, mut childout) = proc.take_childs();

    let ((log, to_cache), conn) = scope(|s| {
        let ta = mergetx.clone();
        let tb = mergetx.clone();

        let subio_writer = s.spawn(|| sender(rx, &childin, conn, ta));
        let subio_reader = s.spawn(|| receiver(&mut childout, tb));
        let merged = s.spawn(|| merger(mergerx));
        parser(&mut inlines, tx).expect("couldnt parse");

        drop(mergetx);

        subio_writer.join().expect("couldnt join the writer");
        subio_reader.join().expect("couldnt join the reader");

        (merged.join().expect("couldnt join merger"), conn)
    });

    if let Some(conn) = conn {
        let mut conn = open_db(conn, OpenFlags::default()).expect("couldnt open conn");
        init_cache(&conn).expect("couldnt init cache");

        let tx = conn.transaction().expect("couldnt start transaction");
        {
            let mut stmt =
                tx.prepare_cached("INSERT INTO computations (hash, result_value) VALUES (?1, ?2)")?;

            for (s, r) in to_cache {
                stmt.execute(params![s.to_string(), r])
                    .expect("couldnt update db with new entry");
            }
        }
        tx.commit().expect("couldnt commit transaction");
    }

    Ok(log)
}

/// reads responses from solver subprocess
fn receiver(childout: &mut BufReader<ChildStdout>, tx: Sender<Received>) {
    while let Ok((r, a)) = get_response(childout) {
        if r == "EXIT" {
            break;
        } else if a == 1 {
            tx.send(Received::Response(r, Instant::now()))
                .expect("couldnt send response to tx");
        }
    }
}

/// sends queries to solver subprocess
fn sender(
    rx: Receiver<SendCommand>,
    mut childin: &ChildStdin,
    conn: Option<&str>,
    tx: Sender<Received>,
) {
    let mut backlog = Vec::new();

    let conn = conn
        .as_ref()
        .map(|c| open_db(c, OpenFlags::default()).expect("couldnt open conn"))
        .inspect(|c| init_cache(c).expect("couldnt init cache"));

    while let Ok(sc) = rx.recv() {
        if let Some(conn) = &conn {
            let cached_result = query_db(conn, &sc.sexp);
            if let Some(resp) = cached_result {
                tx.send(Received::CacheHit(sc.sexp.sexp.clone(), resp.to_string()))
                    .expect("couldnt send cache to tx");
                backlog.push(sc.sexp);
            } else {
                for b in backlog.into_iter() {
                    writeln!(childin, "{}", b.sexp).expect("I/O error: failed to send to solver");
                    writeln!(childin, r#"(echo "DONE0")"#,)
                        .expect("I/O error: failed to send to solver");
                }
                writeln!(childin, "{}", sc.sexp.sexp).expect("I/O error: failed to send to solver");
                writeln!(childin, r#"(echo "DONE1")"#,)
                    .expect("I/O error: failed to send to solver");

                tx.send(Received::CacheMiss(sc.sexp, Instant::now()))
                    .expect("couldnt send cache to tx");

                backlog = Vec::new();
            };
        } else {
            writeln!(childin, "{}", sc.sexp.sexp).expect("I/O error: failed to send to solver");
            writeln!(childin, r#"(echo "DONE1")"#).expect("I/O error: failed to send to solver");
            tx.send(Received::CacheMiss(sc.sexp, Instant::now()))
                .expect("couldnt send cache to tx");
        }
    }

    writeln!(childin, r#"(echo "EXIT")"#).expect("I/O error: failed to send to solver");
    writeln!(childin, r#"(echo "DONE0")"#).expect("I/O error: failed to send to solver");
}

fn parser(inlines: &mut Box<dyn BufRead>, tx: Sender<SendCommand>) -> Result<()> {
    let mut parser = ParserState {
        linenum: 0,
        running: "".to_string(),
        par_balance: 0,
        line_has_stuff: false,
    };

    // let mut bla = Builder::new()
    //     .keep(true)
    //     .prefix("tee")
    //     .tempfile_in("tees")
    //     .expect("couldnt open tmp file");

    let mut last_hash = 0;

    loop {
        let next_sexp = next_sexp(inlines, &mut parser, last_hash);

        let next_sexp: HashedSexp = match next_sexp {
            Ok(n) => n,
            Err(Error::Other(x)) => {
                if x == "eof" {
                    break;
                } else {
                    return Err(Error::Other(x));
                }
            }
            Err(other) => return Err(other),
        };
        // writeln!(bla, "{}", next_sexp.sexp).expect("bla");
        // eprintln!("{}", next_sexp.sexp);

        last_hash = next_sexp.hash;
        tx.send(SendCommand { sexp: next_sexp })
            .expect("couldnt send");
    }

    Ok(())
}

// fn merge_results(
//     conn: &mut Option<Connection>,
//     sender_res: Vec<Query>,
//     receiver_res: Vec<Query>,
// ) -> Result<PerfLog> {
//     let mut res: Vec<Query> = Vec::new();
//     let mut cache_hits = 0;
//     let mut cache_misses = 0;

//     if let Some(conn) = conn {
//         let mut conn2 = open_db(
//             conn.path().expect("couldnt get db path"),
//             OpenFlags::default(),
//         )
//         .expect("couldnt open conn2");
//         let transaction = conn2.transaction()?;
//         {
//             let mut stmt = transaction
//                 .prepare_cached("INSERT INTO computations (hash, result_value) VALUES (?1, ?2)")?;
//             for (q, p) in sender_res.into_iter().zip(receiver_res.into_iter()) {
//                 if let Some(cached) = &q.result {
//                     if !cached.is_empty() {
//                         res.push(q);
//                         cache_hits += 1;
//                     }
//                 } else {
//                     stmt.execute(params![
//                         q.query.as_ref().unwrap().hash.to_string(),
//                         p.result.as_ref().unwrap_or(&"".to_string())
//                     ])?;
//                     if p.result.is_some() {
//                         let s = Query {
//                             query: q.query,
//                             result: p.result,
//                             start_time: q.start_time,
//                             end_time: p.end_time,
//                         };
//                         res.push(s);
//                         cache_misses += 1;
//                     }
//                 }
//             }
//         }
//         transaction.commit()?;
//     } else {
//         sender_res.into_iter().zip(receiver_res).for_each(|(x, y)| {
//             let q = Query {
//                 query: x.query,
//                 result: y.result,
//                 start_time: x.start_time,
//                 end_time: y.end_time,
//             };
//             if q.result.is_some() {
//                 res.push(q);
//                 cache_misses += 1;
//             }
//         });
//     }

//     Ok(PerfLog {
//         queries: res,
//         cache_hits,
//         cache_misses,
//     })
// }

fn next_sexp(
    inlines: &mut Box<dyn BufRead>,
    parser: &mut ParserState,
    last_hash: u64,
) -> Result<HashedSexp> {
    loop {
        let mut line = String::new();
        if inlines
            .read_line(&mut line)
            .expect("couldnt read from input")
            == 0
        {
            break;
        }
        parser.linenum += 1;

        parser.running.push_str(&line);

        for (line_i, c) in line.chars().enumerate() {
            if c == '(' {
                parser.par_balance += 1;
                parser.line_has_stuff = true;
            } else if c == ')' {
                parser.par_balance -= 1;
                parser.line_has_stuff = true;
            }

            let ind = parser.running.len() - (line.len() - line_i);
            if c == ';' {
                parser.running = parser.running[..ind].to_string();
                break;
            }
            if parser.line_has_stuff && parser.par_balance == 0 {
                parser.line_has_stuff = false;
                let cur = &parser.running[..=ind];
                let nolines = &str::replace(cur, "\n", "");

                let sexp = match parse(nolines) {
                    Ok(x) => x,
                    Err(mut not_ok) => {
                        not_ok.location.line = parser.linenum;
                        return Err(Error::Parser(not_ok));
                    }
                };

                let hashed = HashedSexp::new(last_hash, sexp);
                parser.running = parser.running[ind + 1..].to_string();
                return Ok(hashed);
            }
        }
    }
    Err(Error::Other("eof".to_string()))
}

pub fn init_perf(conn: &Connection) -> std::result::Result<(), RusqliteError> {
    conn.execute(
        "CREATE TABLE IF NOT EXISTS runs (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            run_time TIMESTAMP NOT NULL,
            cache_hits INTEGER NOT NULL,
            cache_misses INTEGER NOT NULL
        )",
        [],
    )?;

    conn.execute(
        "CREATE TABLE IF NOT EXISTS queries (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            run_id INTEGER NOT NULL,
            query TEXT NOT NULL,
            response TEXT NOT NULL,
            time_taken INTEGER NOT NULL,
            FOREIGN KEY(run_id) REFERENCES runs(id)
        )",
        [],
    )?;

    Ok(())
}

pub fn log_results(log: &PerfLog, file_path: &str) -> Result<()> {
    let mut conn = open_db(file_path, OpenFlags::default())?;
    init_perf(&conn)?;

    let trans = conn.transaction()?;
    {
        let run_time = Local::now().timestamp_micros();

        trans.execute(
            "INSERT INTO runs(run_time, cache_hits, cache_misses) VALUES (?1, ?2, ?3)",
            params![run_time, log.cache_hits, log.cache_misses],
        )?;

        let run_id = trans.last_insert_rowid();

        let mut stmt = trans.prepare_cached(
            "INSERT INTO queries (run_id, query, response, time_taken) VALUES (?1, ?2, ?3, ?4)",
        )?;
        for query in &log.queries {
            stmt.execute(params![
                run_id,
                format!("{}", query.input),
                query.output,
                query.time_taken.as_nanos() as u64
            ])?;
        }
    }
    trans.commit()?;

    Ok(())
}
