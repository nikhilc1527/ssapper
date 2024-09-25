use std::{
    collections::HashSet,
    hash::{DefaultHasher, Hash, Hasher},
    io::{stdout, BufRead, Write},
    process::exit,
};

use peg::str::LineCol;
use smtlib::{
    proc::SmtProc,
    sexp::{parse, Atom, Sexp},
};

#[derive(Debug, Clone)]
pub struct HashedSexp {
    hash: u64,
    sexp: Sexp,
}

impl HashedSexp {
    fn new(prev_hash: u64, sexp: Sexp) -> Self {
        let mut hasher = DefaultHasher::new();
        // prefix_sexps.hash(&mut hasher);
        prev_hash.hash(&mut hasher);
        sexp.hash(&mut hasher);
        let hash = hasher.finish();
        Self { hash, sexp }
    }
}

pub fn parse_file<T: BufRead>(
    inlines: T,
) -> Result<Vec<HashedSexp>, peg::error::ParseError<LineCol>> {
    let mut linenum = 0;
    let mut running: String = "".to_string();
    let mut par_balance = 0;
    let mut line_has_stuff = false;

    let mut prefix_vec = Vec::new();

    let mut res = Vec::new();

    for line in inlines.lines() {
        linenum += 1;
        // println!("parsing line {}", linenum);

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
                // (echo "<<DONE>>")
                let sexp = match parse(&running[..=ind]) {
                    Ok(x) => x,
                    Err(mut not_ok) => {
                        not_ok.location.line = linenum;
                        return Err(not_ok);
                    }
                };

                prefix_vec.push(sexp.clone());
                if res.is_empty() {
                    res.push(HashedSexp::new(0, sexp));
                } else {
                    res.push(HashedSexp::new(res.last().unwrap().hash, sexp));
                }

                running = running[ind + 1..].to_string();
            }
        }
    }

    Ok(res)
}

fn is_response_needed(sexp: &Sexp) -> bool {
    let Sexp::List(list) = sexp else { return false };

    if list.is_empty() {
        return false;
    }
    let x = &list[0];

    let Sexp::Atom(y) = x else { return false };

    let Atom::S(s) = y else { return false };

    let important_sexps = HashSet::from([
        "check-sat",
        "get-model",
        "get-info",
        "get-value",
        "get-unsat-core",
    ]);

    important_sexps.contains(s as &str)
}

pub fn send_sexps(sexps: &[HashedSexp], proc: &mut SmtProc, writer: &mut Box<dyn Write>) {
    // let mut responses = Vec::new();
    // somehow sending input and getting no error, while just raw z3 is getting error on same input
    // minimal example: testing_inputs/stainless_benchmarks/cvc4-NA-913.smt2
    for s in sexps {
        proc.send(&s.sexp);
        let res = proc.get_response(|s| s.to_string());
        if is_response_needed(&s.sexp) {
            let out_str = res.expect("failed to get response from proc");
            if out_str.starts_with("(e") {
                println!("failed on {:?}", s.sexp);
                let _ = stdout().flush();
                exit(1);
            }
            // responses.push(res.expect("failed to get response from proc"));
            writeln!(writer, "{}", out_str).expect("couldnt write to file");
        }
    }
    // responses
}
