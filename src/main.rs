use std::{
    env,
    fmt::Debug,
    fs::File,
    io::{stdin, BufRead, BufReader, BufWriter, Write},
    process::exit,
    sync::Mutex,
    time::{Duration, Instant}, collections::{HashSet, HashMap},
};

extern crate colored;
extern crate peg;
extern crate rayon;
extern crate smtlib;

use colored::Colorize;
use peg::str::LineCol;
use rayon::iter::IntoParallelRefMutIterator;
use rayon::prelude::*;
use smtlib::{
    conf::SolverCmd,
    proc::{SmtProc, SolverError},
    sexp::{Atom, Sexp, parse},
};

struct Logging {
    outfile: Option<BufWriter<File>>,
}

impl Logging {
    fn new(out: Option<&String>) -> Logging {
        let writer = out.map(|outfilename| BufWriter::new(File::create(outfilename).unwrap()));

        Logging { outfile: writer }
    }

    fn log(&mut self, s: &str) {
        match &mut (self.outfile) {
            Some(file) => {
                file.write_all(s.as_bytes()).unwrap();
            }
            None => (),
        }
    }
}

fn is_response_needed(sexp: &Sexp) -> bool {
    let Sexp::List(list) = sexp else { return false };

    if list.is_empty() {
        return false;
    }
    let x = &list[0];

    let Sexp::Atom(y) = x else { return false };

    let Atom::S(s) = y else { return false };

    let important_sexps = HashSet::from(
        [
            "check-sat",
            "get-model",
            "get-info",
            "get-value",
            "get-unsat-core",
        ]
    );

    important_sexps.contains(s as &str)
}

#[derive(Debug, Clone)]
struct Status(
    usize,    // index of solver
    Duration, // duration that solver took to solve
    String,   // response (in case of check-sat, get-model, etc)
);

fn for_all_par<F>(procs: &mut [SmtProc], f: F) -> Vec<Status> where F: Fn(usize, &mut SmtProc) -> Status + std::marker::Sync {
    let responses = Mutex::new(Vec::new());
    procs.par_iter_mut().enumerate().for_each(|(i, p)| {
        let s = f(i,p);

        let mut rl = responses.lock().unwrap();
        rl.push(s);
    });

    responses.into_inner().unwrap()
}

fn send_all(sexp: &Sexp, procs: &mut [SmtProc], get_resp: bool) -> Vec<Status> {
    let f = |i: usize, p: &mut SmtProc| {
        let start = Instant::now();
        // begin timing

        p.send(sexp);
        let res =
            if get_resp {
                p.get_response(|s| s.to_string()).unwrap()
            } else {
                let r = p.get_response(|s| s.to_string());
                if let Err(SolverError::UnexpectedClose(msg)) = r {
                    println!("{}", format!("ERROR: {:?}", msg).magenta());
                }

                "".to_string()
            };

        // end timing
        let duration = start.elapsed();
        Status(i, duration, res)
    };

    for_all_par(procs, f)
}

#[derive(Debug)]
struct Cache(HashMap<Sexp, Vec<Status>>); // sexp sent, responses

fn handle_sexp(
    sexp_str: &str,
    _linenum: usize,
    _running_line: usize,
    procs: &mut [SmtProc],
    logger: &mut Logging,
    cache: Option<Cache>,
) -> Result<Cache, peg::error::ParseError<LineCol>> {
    let sexp = parse(sexp_str)?;
    let get_response = is_response_needed(&sexp);
    let mut cached = None;
    if let Some(cache) = &cache {
        let Cache(caches) = cache;

        if let Some(resp) = caches.get(&sexp) {
            cached = Some(resp.clone());
        }
    }

    let res = match &cached {
        Some(resp) => resp.clone(),
        None => send_all(&sexp, procs, get_response),
    };
    if get_response {
        // logger.log(&format!("line {}, response to {}\n", linenum, sexp_str));
        for r in &res {
            let Status(_i, _dur, s) = r;
            // logger.log(&format!("{}th solver took {:?}:\n{}\n", i + 1, dur, s));
            logger.log(&format!("{s}\n"));
        }
    }

    if !get_response {
        Ok(Cache(HashMap::new()))
    } else {
        let Cache(mut v) = cache.unwrap_or(Cache(HashMap::new()));

        if cached.is_none() {
            v.insert(sexp, res);
        }

        Ok(Cache(v))
    }
}

fn main() {
    // setup solvers
    let args: Vec<String> = env::args().collect();
    let mut solvers: Vec<String> = Vec::new();
    let mut infilename = None;
    let mut outfilename = None;
    // TODO: maybe change to some established cmdline args parser at some point
    let mut i = 1;
    while i < args.len() {
        if args[i] == "-s" || args[i] == "--solver" {
            i += 1;
            while i < args.len() && args[i] != "--" {
                solvers.push(args[i].clone());
                i += 1;
            }
        } else if args[i] == "-i" || args[i] == "--input" {
            i += 1;
            infilename = Some(&args[i]);
        } else if args[i] == "-o" || args[i] == "--output" {
            i += 1;
            outfilename = Some(&args[i]);
        } else {
            panic!("unknown argument");
        }
        i += 1;
    }

    let inlines: Box<dyn BufRead> = match infilename {
        None => Box::new(stdin().lock()),
        Some(filename) => Box::new(BufReader::new(
            File::open(filename).expect("could not open file"),
        )),
    };

    let mut procs: Vec<SmtProc> = Vec::new();

    let mut logger = Logging::new(outfilename);

    for solver in &solvers {
        let split: Vec<&str> = solver.split(' ').collect();

        let cmd = SolverCmd {
            cmd: split[0].to_string(),
            args: split[1..split.len()]
                .iter()
                .map(|s| s.to_string())
                .collect(),
            options: vec![],
        };
        // running commands straight from user input, (possible) security vulnerability
        // also assuming that input of command is well-formed
        // TODO: fix security vulnerability (or dont care)

        procs.push(
            SmtProc::new(cmd, None).unwrap_or_else(|_| panic!("failed to run solver {}", solver)),
        );
    }

    let mut linenum = 0;
    let mut running: String = "".to_string();
    let mut running_line = 1;
    let mut par_balance = 0;
    let mut line_has_stuff = false;

    let prog_start = Instant::now();
    let mut cache: Option<Cache> = None;

    for line in inlines.lines() {
        linenum += 1;

        let line = line.unwrap();

        running.push_str(&line);
        // running.push('\n');

        for (line_i, c) in line.chars().enumerate() {
            if c == '(' {
                par_balance += 1;
                if par_balance == 1 {
                    running_line = linenum;
                }
                line_has_stuff = true;
            }
            if c == ')' {
                par_balance -= 1;
                line_has_stuff = true;
            }

            let ind = running.len() - (line.len() - line_i);
            if c == ';' {
                let comment = &running[ind..];
                for_all_par(&mut procs, |_i, p| {
                    p.send_str(comment);
                    Status(0,Duration::new(0, 0),"".to_string())
                });
                running = running[..ind].to_string();
                break;
            }

            if line_has_stuff && par_balance == 0 {
                line_has_stuff = false;
                // println!("sending {}", &running[..=ind]);
                let res = handle_sexp(
                    &running[..=ind],
                    linenum,
                    running_line,
                    &mut procs,
                    &mut logger,
                    cache,
                );
                match res {
                    Ok(c) => cache = Some(c),
                    // exit program when we get parse error,
                    // since rest of the program is invalid
                    Err(e) => {
                        let ls = if running_line == linenum {
                            linenum.to_string()
                        } else {
                            format!("{}-{}", running_line, linenum)
                        };

                        let s = if let Some(infilename) = infilename {
                            format!("input file {}:\nparse error on line {}:",
                                    infilename, ls).red()
                        } else {
                            format!("parse error on line {}:", ls).red()
                        };
                        println!("{}\n{:?}", s, e);
                        exit(1);
                    }
                }
                running = running[ind + 1..].to_string();
            }
        }
    }

    let prog_dur = prog_start.elapsed();

    if let Some(infilename) = infilename {
        let s = format!(
            "successfully ran input file {} in {:?}",
            infilename, prog_dur
        )
            .green();
        println!("{}", s);
    }
}
