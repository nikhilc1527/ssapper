use std::{
    hash::{DefaultHasher, Hash, Hasher},
    io::BufRead,
    time::{Duration, Instant},
};

use thiserror::Error;

use rusqlite::{params, Connection};
use smtlib::{
    proc::SmtProc,
    sexp::{parse, Sexp},
};

use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize, Hash, Eq, PartialEq)]
pub struct HashedSexp {
    hash: u64,
    sexp: Sexp,
}

pub type Result<T> = std::result::Result<T, Error>;

#[derive(Debug, Error)]
pub enum Error {
    #[error("rusqlite database error")]
    Rusqlite(#[from] rusqlite::Error),

    #[error("solver error")]
    Solver(#[from] smtlib::proc::SolverError),

    #[error("Parser error")]
    Parser(#[from] peg::error::ParseError<peg::str::LineCol>),
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
            panic!("unreachable");
        }
    }
}

impl HashedSexp {
    fn new(prev_hash: u64, sexp: Sexp) -> Self {
        let mut hasher = DefaultHasher::new();
        prev_hash.hash(&mut hasher);
        sexp.hash(&mut hasher);
        let hash = hasher.finish();
        Self { hash, sexp }
    }
}

pub fn parse_file<T: BufRead>(inlines: T) -> Result<Vec<HashedSexp>> {
    let mut linenum = 0;
    let mut running: String = "".to_string();
    let mut par_balance = 0;
    let mut line_has_stuff = false;

    let mut res: Vec<HashedSexp> = Vec::new();

    for line in inlines.lines() {
        linenum += 1;

        let line = line.unwrap();

        running.push_str(&line);

        for (line_i, c) in line.chars().enumerate() {
            if c == '(' {
                par_balance += 1;
                line_has_stuff = true;
            } else if c == ')' {
                par_balance -= 1;
                line_has_stuff = true;
            }

            let ind = running.len() - (line.len() - line_i);
            if c == ';' {
                running = running[..ind].to_string();
                break;
            }

            if line_has_stuff && par_balance == 0 {
                line_has_stuff = false;
                let cur = &running[..=ind];
                let nolines = &str::replace(cur, "\n", "");

                let sexp = match parse(nolines) {
                    Ok(x) => x,
                    Err(mut not_ok) => {
                        not_ok.location.line = linenum;
                        return Err(Error::Parser(not_ok));
                    }
                };

                match res.last() {
                    Some(s) => res.push(HashedSexp::new(s.hash, sexp)),
                    None => res.push(HashedSexp::new(0, sexp)),
                }

                running = running[ind + 1..].to_string();
            }
        }
    }

    Ok(res)
}

pub fn open_db() -> Result<Connection> {
    let conn = Connection::open("/tmp/solver_cache.db")?;

    conn.execute_batch("PRAGMA journal_mode = WAL; PRAGMA synchronous = OFF")?;

    conn.execute(
        "CREATE TABLE IF NOT EXISTS computations (
            hash TEXT PRIMARY KEY,
            result_value TEXT NOT NULL
        )",
        [],
    )?;

    Ok(conn)
}

pub fn send_sexps(sexps: &[HashedSexp], proc: &mut SmtProc) -> Result<Vec<String>> {
    let mut responses = Vec::new();
    let mut total_time_taken = Duration::from_micros(0);

    for s in sexps {
        let start_time = Instant::now();
        proc.send(&s.sexp);
        let res = proc.get_response(|s| s.to_string())?;
        total_time_taken += Instant::now().duration_since(start_time);

        // TODO: dont try to get request each time, only get request when something is printed (need to figure out when that is)
        // we can also (maybe?) try to get outputs asynchronously from sending inputs, so that there is minimal overhead when running the process and the performance benchmark can be as accurate as possible and also to make the overall thing faster
        if !res.is_empty() {
            responses.push(res.to_string());
        }
    }
    Ok(responses)
}

pub fn send_sexps_with_cache(
    sexps: &[HashedSexp],
    proc: &mut SmtProc,
    conn: &mut Connection,
) -> Result<Vec<String>> {
    let mut responses = Vec::new();
    let mut total_time_taken = Duration::from_micros(0);

    for s in sexps {
        // TODO: since we are always running each statement anyways, caching doesnt actually 
        // improve the performance at all yet

        let start_time = Instant::now();
        proc.send(&s.sexp);
        let res = proc.get_response(|s| s.to_string())?;
        total_time_taken += Instant::now().duration_since(start_time);

        let mut query_stmt =
            conn.prepare("SELECT result_value FROM computations WHERE hash = ?1")?;
        let cached_result: Option<String> = query_stmt
            .query_row(params![s.hash.to_string()], |row| row.get(0))
            .ok();

        if let Some(resp) = cached_result {
            if !resp.is_empty() {
                responses.push((s, resp.to_string(), false));
            }
        } else {
            if !res.is_empty() {
                responses.push((s, res.to_string(), true));
            }
        };
    }
    // we're never going to need to update db while sending sexps, so we can send all of them at
    // once at the end
    let tx = conn.transaction()?;
    {
        let mut stmt =
            tx.prepare("INSERT INTO computations (hash, result_value) VALUES (?1, ?2)")?;
        for (s, resp, need_to_cache) in &responses {
            if *need_to_cache {
                stmt.execute(params![s.hash.to_string(), resp.to_string()])?;
            }
        }
    }
    tx.commit()?;

    let responses = responses.into_iter().map(|(_, r, _)| r).collect();

    Ok(responses)
}
