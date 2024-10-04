use rusqlite::Connection;
use smtlib::{proc::SmtProc, sexp::Sexp};

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

#[derive(Debug)]
struct SendCommand {
    sexp: Sexp,
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
        if last_line == "DONE" || last_line == "\"DONE\"" {
            let response = buf[..last_end].trim_end();
            return Ok(response.to_string());
        }
    }
}

fn reciever(childout: &mut BufReader<ChildStdout>) -> Vec<String> {
    let mut responses = Vec::new();

    while let Ok(r) = get_response(childout) {
        if r == "EXIT" || r == "\"EXIT\"" {
            break;
        } else if !r.is_empty() {
            responses.push(r);
        }
    }

    responses
}

fn sender(rx: Receiver<Option<SendCommand>>, mut childin: &ChildStdin) {
    while let Ok(sc1) = rx.recv() {
        if let Some(sc) = sc1 {
            writeln!(childin, "{}", sc.sexp).expect("I/O error: failed to send to solver");
            writeln!(childin, r#"(echo "DONE")"#).expect("I/O error: failed to send to solver");
            // println!("writing: {}", sc.sexp);
        } else {
            break;
        }
    }
    writeln!(childin, r#"(echo "EXIT")"#).expect("I/O error: failed to send to solver");
    writeln!(childin, r#"(echo "DONE")"#).expect("I/O error: failed to send to solver");
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
        // println!("waiting for next sexp");
        let next_sexp = next_sexp(inlines, &mut parser, last_hash);
        // println!("got next sexp: {next_sexp:?}");

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

        tx.send(Some(SendCommand {
            sexp: next_sexp.sexp,
        }))
        .expect("couldnt send");

        last_hash = next_sexp.hash;
    }

    tx.send(None).expect("couldnt send none");

    Ok(())
}

pub async fn parse_and_send_async<'a>(
    inlines: Box<dyn BufRead>,
    proc: SmtProc,
    _conn: &mut Connection,
) -> Result<Vec<String>> {
    let mut inlines = inlines;

    let (tx, rx) = channel::<Option<SendCommand>>();

    let (childin, mut childout) = proc.take_childs();

    let responses = scope(|s| {
        let subio_writer = s.spawn(|| sender(rx, &childin));
        let subio_reader = s.spawn(|| reciever(&mut childout));
        parser(&mut inlines, tx).expect("couldnt parse");

        subio_writer.join().expect("couldnt join the writer");
        subio_reader.join().expect("couldnt join the reader")
    });
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
                // let hashed = match res.last() {
                //     Some(s) => HashedSexp::new(s.hash, sexp),
                //     None => HashedSexp::new(0, sexp),
                // };
                // res.push(hashed.clone());
                parser.running = parser.running[ind + 1..].to_string();
                return Ok(hashed);

                // futures.push(send_sexp_with_cache(hashed, &mut backlog, proc, conn));
            }
        }
    }
    Err(Error::Other("eof".to_string()))
}
