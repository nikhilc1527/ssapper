use std::{env, io::stdin, time::Instant};

extern crate smtlib;

use smtlib::{conf::SolverCmd, proc::SmtProc, sexp::{Sexp, Atom}};

fn handle_sexp(sexp_str: &str, linenum: usize, running_line: usize) {
    println!("{}\nline {}-{}", sexp_str, running_line, linenum);
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
        // TODO: fix security vulnerability (or dont care)
        procs.push(SmtProc::new(cmd, None).expect(&format!("failed to run solver {}", &solvers[i])));
    }

    struct Line (i64, Sexp);

    let mut sexps: Vec<Line> = Vec::new();

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

            let mut line_i = 0;
            let mut handled = false;
            for c in line.chars() {
                let ind = running.len() - (line.len() - line_i);
                if c == '(' {
                    par_balance += 1;
                    line_has_stuff = true;
                }
                if c == ')' {
                    par_balance -= 1;
                    line_has_stuff = true;
                }
                if c == ';' {
                    running = running[..=ind].to_string();
                    break;
                }

                if line_has_stuff && par_balance == 0 {
                    line_has_stuff = false;
                    handle_sexp(&running[..=ind], linenum, running_line);
                    running = running[ind+1..].to_string();
                    handled = true;
                }

                line_i += 1;
            }
            if handled {
                running_line = linenum + 1;
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
