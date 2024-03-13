use std::{env, io::stdin, time::Instant};

extern crate smtlib;
extern crate peg;

use peg::str::LineCol;
use smtlib::{conf::SolverCmd, proc::SmtProc, sexp::{Sexp, Atom}};

fn is_checksat(sexp: &Sexp) -> bool {
    let Sexp::List(list) = sexp
    else {return false};

    if list.len() != 1 { return false }
    let x = &list[0];

    let Sexp::Atom(y) = x
    else {return false};

    let Atom::S(s) = y
    else {return false};

    s == "check-sat"
}

fn handle_sexp(sexp_str: &str, linenum: usize, _running_line: usize
               , procs: &mut [SmtProc]) -> Result<(), peg::error::ParseError<LineCol>> {
    // println!("{}\nline {}-{}", sexp_str, _running_line, linenum);

    let sexp = smtlib::sexp::parse(sexp_str)?;

    let check_sat = is_checksat(&sexp);

    if check_sat {
        for p in procs.iter_mut() {
            let start = Instant::now();
            p.send(&sexp);
            let duration = start.elapsed();
            println!("line {} check-sat took {:?}", linenum, duration);
        }
    } else {
        for p in procs.iter_mut() {
            p.send(&sexp);
        }            
    }

    Ok(())
}

fn main() {
    // let l = smtlib::sexp::parse("\n  \n \n(check-sat) \n  ");
    // println!("{:?}", l);
    // return;

    // setup solvers
    let args: Vec<String> = env::args().collect();
    let mut solvers: Vec<String> = Vec::new();
    { // TODO: maybe change to some established cmdline args parser at some point
        let mut i = 1;
        while i < args.len() {
            if args[i] == "-s" || args[i] == "--solver" {
                i += 1;
                while i < args.len() && args[i] != "--" {
                    solvers.push(args[i].clone());
                    i += 1;
                }
            } else {
                panic!("unknown argument");
            }
            i += 1;
        }
    }

    let mut procs: Vec<SmtProc> = Vec::new();

    for solver in &solvers {
        let split: Vec<&str> = solver.split(' ').collect();

        let cmd = SolverCmd {
            cmd: split[0].to_string(),
            args: split[1..split.len()].iter().map(|s| s.to_string()).collect(),
            options: vec![]
        };
        // running commands straight from user input, (possible) security vulnerability
        // also assuming that input of command is well-formed
        // TODO: fix security vulnerability (or dont care)

        procs.push(SmtProc::new(cmd, None).unwrap_or_else(|_| panic!("failed to run solver {}", solver)));
    }

    {
        let mut linenum = 0;
        let mut running: String = "".to_string();
        let mut running_line = 1;
        let mut par_balance = 0;
        let mut line_has_stuff = false;
        for line in stdin().lines() {
            linenum += 1;

            let line = line.unwrap();

            running.push_str(&line);

            let mut handled = false;
            for (line_i, c) in line.chars().enumerate() {
                let ind = running.len() - (line.len() - line_i);
                if c == '(' {
                    par_balance += 1;
                    line_has_stuff = true;
                }
                if c == ')' {
                    par_balance -= 1;
                    line_has_stuff = true;
                }
                if c == ';' { // TODO: running_line doesnt update on comment lines
                    running = running[..ind].to_string();
                    break;
                }

                if line_has_stuff && par_balance == 0 {
                    line_has_stuff = false;
                    let res = handle_sexp(&running[..=ind], linenum, running_line, &mut procs);
                    match res {
                        Ok(()) => (),
                        Err(e) => println!("parse error on line {}-{}\n{}\n {:?}", running_line, linenum, &running[..=ind], e),
                    }
                    running = running[ind+1..].to_string();
                    handled = true;
                }
            }
            if handled {
                running_line = linenum + 1;
            }
        }
    }
}
