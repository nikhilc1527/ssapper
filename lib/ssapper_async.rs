use rusqlite::{params, Connection};
use smtlib::proc::SmtProc;

use crate::{Error, HashedSexp, Result};

use std::{
    io::{BufRead, BufReader, Write},
    process::{ChildStdin, ChildStdout},
    sync::mpsc::{channel, Receiver, Sender},
    thread::scope,
};

use smtlib::sexp::parse;

struct ParserState {
    linenum: usize,
    running: String,
    par_balance: usize,
    line_has_stuff: bool,
}

#[derive(Debug, Clone)]
struct SendCommand {
    sexp: HashedSexp,
}

fn get_response(child: &mut BufReader<ChildStdout>) -> std::result::Result<String, std::io::Error> {
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
        // Z3 doesn't put quotes and CVC does (quotes do follow SMT-LIB)
        if last_line.starts_with("DONE") {
            let response = buf[..last_end].trim_end();
            return Ok(response.to_string());
        }
    }
}

fn reciever(childout: &mut BufReader<ChildStdout>) -> Vec<String> {
    let mut responses = Vec::new();

    while let Ok(r) = get_response(childout) {
        if r == "EXIT" {
            break;
        } else {
            responses.push(r);
        }
    }

    responses
}

fn query_db(conn: &mut Connection, s: &HashedSexp) -> Option<String> {
    let mut query_stmt = conn
        .prepare_cached("SELECT result_value FROM computations WHERE hash = ?1")
        .expect("couldnt get response from db");
    query_stmt
        .query_row(params![s.hash.to_string()], |row| row.get(0))
        .ok()
}

fn sender(
    rx: Receiver<Option<SendCommand>>,
    mut childin: &ChildStdin,
    conn: &mut Connection,
) -> Vec<(Option<String>, HashedSexp)> {
    let mut cached = Vec::new();

    let mut backlog = Vec::new();

    while let Ok(sc1) = rx.recv() {
        if let Some(sc) = sc1 {
            backlog.push(sc);
            let sc = backlog.last().unwrap();
            let s = &sc.sexp;
            let cached_result = query_db(conn, s);
            if let Some(resp) = cached_result {
                cached.push((Some(resp.to_string()), sc.sexp.clone()));
                // writeln!(childin, r#"(echo "DONE")"#).expect("I/O error: failed to send to solver");
            } else {
                for b in &backlog {
                    writeln!(childin, "{}", b.sexp.sexp)
                        .expect("I/O error: failed to send to solver");
                    writeln!(childin, r#"(echo "DONE")"#)
                        .expect("I/O error: failed to send to solver");
                    cached.push((None, b.sexp.clone()));
                }
                backlog.clear();
            };

            // println!("writing: {}", sc.sexp);
        } else {
            break;
        }
    }
    writeln!(childin, r#"(echo "EXIT")"#).expect("I/O error: failed to send to solver");
    writeln!(childin, r#"(echo "DONE")"#).expect("I/O error: failed to send to solver");

    cached
}

fn parser(inlines: &mut Box<dyn BufRead>, tx: Sender<Option<SendCommand>>) -> Result<()> {
    let mut parser = ParserState {
        linenum: 0,
        running: "".to_string(),
        par_balance: 0,
        line_has_stuff: false,
    };

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

        last_hash = next_sexp.hash;
        tx.send(Some(SendCommand { sexp: next_sexp }))
            .expect("couldnt send");
    }

    tx.send(None).expect("couldnt send none");

    Ok(())
}

pub async fn parse_and_send_async(
    inlines: Box<dyn BufRead>,
    proc: SmtProc,
    conn: &mut Connection,
) -> Result<Vec<String>> {
    let mut inlines = inlines;

    let (tx, rx) = channel::<Option<SendCommand>>();

    let (childin, mut childout) = proc.take_childs();

    let (a, b) = scope(|s| {
        let subio_writer = s.spawn(|| sender(rx, &childin, conn));
        let subio_reader = s.spawn(|| reciever(&mut childout));
        parser(&mut inlines, tx).expect("couldnt parse");

        let a = subio_writer.join().expect("couldnt join the writer");
        let b = subio_reader.join().expect("couldnt join the reader");
        (a, b)
    });
    let mut responses = Vec::new();
    let transaction = conn.transaction()?;
    {
        let mut stmt = transaction
            .prepare_cached("INSERT INTO computations (hash, result_value) VALUES (?1, ?2)")?;

        // assert_eq!(a.len(), b.len());
        // println!("a: {a:?}");
        // println!("b: {b:?}");
        let mut i = 0;
        while i < a.len() {
            let (x1, x3) = &a[i];
            if let Some(cached) = x1 {
                if !cached.is_empty() {
                    responses.push(cached.to_string());
                }
            } else {
                let y1 = &b[i];

                if !y1.is_empty() {
                    responses.push(y1.to_string());
                }
                stmt.execute(params![x3.hash.to_string(), y1.to_string()])?;
            }
            i += 1;
        }
    }
    transaction.commit()?;

    Ok(responses)
}

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
