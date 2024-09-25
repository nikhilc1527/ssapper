use std::{
    collections::HashSet,
    hash::{DefaultHasher, Hash, Hasher},
    io::BufRead,
};

use peg::{error::ParseError, str::LineCol};
use smtlib::sexp::{parse, Sexp};

#[derive(Debug, Clone)]
pub struct HashedSexp {
    hash: u64,
    sexp: Sexp,
}

impl HashedSexp {
    fn new_hashstr(prefix_str: &str, sexp: Sexp) -> Self {
        let mut hasher = DefaultHasher::new();
        hasher.write(prefix_str.as_bytes()); // if we're hashing the string
        let hash = hasher.finish();
        Self { hash, sexp }
    }

    fn new(prefix_sexps: &Vec<Sexp>, sexp: Sexp) -> Self {
        let mut hasher = DefaultHasher::new();
        prefix_sexps.hash(&mut hasher);
        let hash = hasher.finish();
        Self { hash, sexp }
    }
}

pub fn parse_file<T: BufRead>(
    inlines: T,
) -> Result<Vec<HashedSexp>, peg::error::ParseError<LineCol>> {
    let mut linenum = 0;
    let mut running: String = "".to_string();
    // let mut running_line = 1;
    let mut par_balance = 0;
    let mut line_has_stuff = false;

    let mut prefix_vec = Vec::new();

    let mut res = Vec::new();

    for line in inlines.lines() {
        linenum += 1;

        let line = line.unwrap();

        running.push_str(&line);

        for (line_i, c) in line.chars().enumerate() {
            if c == '(' {
                par_balance += 1;
                // if par_balance == 1 {
                //     running_line = linenum;
                // }
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

                let sexp = match parse(&running[..=ind]) {
                    Ok(x) => x,
                    Err(mut not_ok) => {
                        not_ok.location.line = linenum;
                        return Err(not_ok);
                    }
                };

                prefix_vec.push(sexp.clone());
                res.push(HashedSexp::new(&prefix_vec, sexp));

                running = running[ind + 1..].to_string();
            }
        }
    }

    Ok(res)
}
