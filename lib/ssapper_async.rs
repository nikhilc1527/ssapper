use rusqlite::{params, Connection};
use smtlib::{proc::SmtProc, sexp::Sexp};
use tokio::{
    spawn,
    sync::mpsc::{channel, Receiver, Sender},
};

use crate::{Error, HashedSexp, Result};

use std::io::BufRead;

use smtlib::sexp::parse;

async fn send_sexp_with_cache<'a>(
    s: HashedSexp,
    backlog: &mut Vec<HashedSexp>,
    proc: &mut SmtProc,
    conn: &mut Connection,
    results: &mut Vec<(HashedSexp, String, bool)>,
) -> Result<()> {
    // TODO: since we are always running each statement anyways, caching doesnt actually
    // improve the performance at all yet

    if s.sexp == Sexp::List(vec![Sexp::Atom(smtlib::sexp::Atom::S("exit".to_string()))]) {
        return Err(Error::Other("bla".to_string()));
    }

    let h = s.hash.to_string();
    backlog.push(s.clone());

    let mut query_stmt =
        conn.prepare_cached("SELECT result_value FROM computations WHERE hash = ?1")?;
    let cached_result: Option<String> = query_stmt.query_row(params![h], |row| row.get(0)).ok();

    if let Some(resp) = cached_result {
        results.push((s, resp.to_string(), false));
        Ok(())
    } else {
        let mut responses = Vec::new();
        for b in &mut *backlog {
            proc.send(&b.sexp);
            let res = proc.get_response(|s| s.to_string())?;
            responses.push((b.clone(), res.to_string(), true));
        }
        backlog.clear();
        results.extend(responses.into_iter());
        Ok(())
    }
}

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

pub async fn parse_and_send_async(
    inlines: Box<dyn BufRead>,
    mut proc: SmtProc,
    conn: &mut Connection,
) -> Result<Vec<String>> {
    let mut inlines = inlines;

    let mut parser = ParserState {
        linenum: 0,
        running: "".to_string(),
        par_balance: 0,
        line_has_stuff: false,
    };

    let mut last_hash = 0;

    let (tx, mut rx) = channel::<Option<SendCommand>>(64);

    // let (stdin, stdout) = proc.borrow_io();

    let manager = spawn(async move {
        let mut proc: SmtProc = proc;
        let mut responses = Vec::new();
        // Start receiving messages
        while let Some(sc1) = rx.recv().await {
            if let Some(sc) = sc1 {
                proc.send_raw2(sc.sexp);
                let r = proc
                    .get_response(|s| s.to_string())
                    .expect("couldnt get response");
                if !r.is_empty() {
                    responses.push(r);
                }
            } else {
                break;
            }
        }

        (proc, responses)
    });

    loop {
        // println!("waiting for next sexp");
        let next_sexp = next_sexp(&mut inlines, &mut parser, last_hash);
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
        .await
        .expect("couldnt send");

        last_hash = next_sexp.hash;
    }

    tx.send(None).await.expect("couldnt send none");

    let (proc, responses) = manager.await.expect("couldnt wait for receivers");

    // let msg = proc
    //     .get_response(|s| s.to_string())
    //     .expect("couldnt read from proc");

    // Ok(vec![msg])
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
