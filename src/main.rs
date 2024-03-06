use std::{env, io::stdin, time::Instant};

extern crate smtlib;

use smtlib::{conf::SolverCmd, proc::SmtProc, sexp::{Sexp, Atom}};

fn main() {
    let args: Vec<String> = env::args().collect();
    let mut solvers: Vec<String> = Vec::new();
    { // maybe change to some established cmdline args parser at some point
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

    let n_solvers = solvers.len();

    let mut procs: Vec<SmtProc> = Vec::new();

    for i in 0..n_solvers {
        let split: Vec<&str> = solvers[i].split(" ").collect();

        let cmd: SolverCmd = SolverCmd {
            cmd: split[0].to_string(),
            args: split[1..split.len()].iter().map(|s| s.to_string()).collect(),
            options: vec![]
        };
        // running commands straight from user input, (possible) security vulnerability
        // also assuming that input of command is well-formed
        procs.push(SmtProc::new(cmd, None).expect(&format!("failed to run solver {}", &solvers[i])));
    }

    struct Line (i64, Sexp);

    let mut sexps: Vec<Line> = Vec::new();

    {
        let mut linenum = 0;
        for line in stdin().lines() {
            linenum += 1;
            let // mut
                line = line.unwrap();
            // line.push('\n'); // in order for the parser to not fail

            let sexp = smtlib::sexp::parse(&line);
            // parser fails on (at least) following cases:
            // empty line ""
            // sexp with comment after it "(check-sat) ;; checking sat"
            // comment line without trailing newline

            match sexp {
                Ok(sexp) => sexps.push(Line(linenum, sexp)),
                Err(_e) => println!("error parsing line# {}: {}, {}", linenum, line, _e),
            }
        }
    }

    for Line(linenum, sexp) in &sexps {
        let mut check_sat = false;

        if let Sexp::List(list) = sexp {
            if list.len() == 1 {
                let x = &list[0];
                if let Sexp::Atom(y) = x {
                    if let Atom::S(s) = y {
                        if s == "check-sat" {
                            check_sat = true;
                        }
                    }
                }
            }
        }

        if check_sat {
            for p in &mut procs {
                let start = Instant::now();
                p.send(sexp);
                let duration = start.elapsed();
                println!("line {} check-sat took {:?}", linenum, duration);
            }
        } else {
            for p in &mut procs {
                p.send(sexp);
            }            
        }
    }
}
