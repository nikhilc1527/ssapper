use std::{
    hash::{DefaultHasher, Hash, Hasher},
    io::BufRead,
};

use peg::str::LineCol;
use smtlib::{
    proc::SmtProc,
    sexp::{parse, Sexp},
};

use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct HashedSexp {
    hash: u64,
    sexp: Sexp,
    sexp_str: String,
}

impl HashedSexp {
    fn new(prev_hash: u64, sexp: Sexp, sexp_str: String) -> Self {
        let mut hasher = DefaultHasher::new();
        prev_hash.hash(&mut hasher);
        sexp.hash(&mut hasher);
        let hash = hasher.finish();
        Self {
            hash,
            sexp,
            sexp_str,
        }
    }
}

pub fn parse_file<T: BufRead>(
    inlines: T,
) -> Result<Vec<HashedSexp>, peg::error::ParseError<LineCol>> {
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
                        return Err(not_ok);
                    }
                };

                match res.last() {
                    Some(s) => res.push(HashedSexp::new(s.hash, sexp, running[..=ind].to_string())),
                    None => res.push(HashedSexp::new(0, sexp, running[..=ind].to_string()))
                }

                running = running[ind + 1..].to_string();
            }
        }
    }

    Ok(res)
}

pub fn send_sexps(sexps: &[HashedSexp], proc: &mut SmtProc) -> Vec<String> {
    let mut responses = Vec::new();
    for s in sexps {
        proc.send(&s.sexp);
        let res = proc.get_response(|s| s.to_string());
        let out_str = res.expect("failed to get response from proc");
        if out_str.len() > 0 {
            responses.push(out_str);
        }
    }
    responses
}
