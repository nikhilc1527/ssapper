use std::{env, io::{stdin, BufReader, BufRead, BufWriter, Write}, time::{Instant, Duration}, fmt::Debug, sync::Mutex, process::exit, fs::File};

extern crate smtlib;
extern crate peg;
extern crate rayon;
extern crate colored;

use colored::Colorize;
use peg::str::LineCol;
use rayon::prelude::*;
use rayon::iter::IntoParallelRefMutIterator;
use smtlib::{conf::SolverCmd, proc::{SmtProc, SolverError}, sexp::{Sexp, Atom}};

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
            },
            None => ()
        }
    }
}

fn is_response_needed(sexp: &Sexp) -> bool {
    let Sexp::List(list) = sexp
    else {return false};

    if list.len() != 1 { return false }
    let x = &list[0];

    let Sexp::Atom(y) = x
    else {return false};

    let Atom::S(s) = y
    else {return false};

    s == "check-sat" || s == "get-model" || s == "get-info"
}

#[derive(Debug, Clone)]
struct Status (
    usize, // index of solver
    Duration, // duration that solver took to solve
    String, // response (in case of check-sat, get-model, etc)
);

fn send_all(sexp: &Sexp, procs: &mut [SmtProc], get_resp: bool) -> Vec<Status> {
    let responses: Mutex<Vec<Status>> = Mutex::new(Vec::new());

    procs.par_iter_mut().enumerate().for_each(|(i, p)| {
        // out of the send and get_response, send is order of microseconds and get_response is order of milliseconds
        // dont know if that is because of actual computation time or IO time
        // need more testing data to figure that out

        let start = Instant::now();
        // begin timing
        
        p.send(sexp);
        let res = if get_resp {
            p.get_response(|s| s.to_string()).unwrap()
        } else {
            let r = p.get_response(|s| s.to_string());
            match r {
                Ok(_) => (),
                Err(SolverError::UnexpectedClose(msg)) => {
                    println!("{}", format!("{:?}", msg).magenta());
                }
                Err(_) => ()
            }
            "".to_string()
        };

        // end timing
        let duration = start.elapsed();

        let mut rl = responses.lock().unwrap();
        rl.push(Status(i, duration, res));
    });
    
    responses.into_inner().unwrap()
}

#[derive(Debug)]
struct Cache (Vec<(Sexp, Vec<Status>)>); // sexp sent, responses

fn handle_sexp(sexp_str: &str, linenum: usize, _running_line: usize, procs: &mut [SmtProc], logger: &mut Logging, cache: Option<Cache>) -> Result<Cache, peg::error::ParseError<LineCol>> {
    // println!("line {}-{}: {}", _running_line, linenum, sexp_str);
    let sexp = smtlib::sexp::parse(sexp_str)?;
    let get_response = is_response_needed(&sexp);
    let mut cached = None;
    if let Some(cache) = &cache {
        let Cache(caches) = cache;
        for (old_sexp, resp) in caches {
            if old_sexp == &sexp {
                cached = Some(resp.clone());
                break;
            }
        }
    }

    let res = match &cached {
        Some(resp) => resp.clone(),
        None => send_all(&sexp, procs, get_response)
    };
    if get_response {
        logger.log(&format!("line {}, response to {}\n", linenum, sexp_str));
        for r in &res {
            let Status(i, dur, s) = r;
            logger.log(&format!("{}th solver took {:?}:\n{}\n", i + 1, dur, s));
        }
    }

    if !get_response {
        Ok(Cache(vec![]))
    }
    else {
        let Cache(mut v) = cache.unwrap_or(Cache(vec![]));

        if let Some(_) = &cached {
            
        }
        else {
            v.push((sexp, res));
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
        }
        else if args[i] == "-i" || args[i] == "--input" {
            i += 1;
            infilename = Some(&args[i]);
        }
        else if args[i] == "-o" || args[i] == "--output" {
            i += 1;
            outfilename = Some(&args[i]);
        }
        else {
            panic!("unknown argument");
        }
        i += 1;
    }
    
    let inlines: Box<dyn BufRead> =
        match infilename {
            None => Box::new(stdin().lock()),
            Some(filename) => Box::new(BufReader::new(File::open(filename).expect("could not open file")))
        };

    let mut procs: Vec<SmtProc> = Vec::new();

    let mut _logger = Logging::new(outfilename);

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
                running = running[..ind].to_string();
                break;
            }

            if line_has_stuff && par_balance == 0 {
                line_has_stuff = false;
                let res = handle_sexp(&running[..=ind], linenum, running_line, &mut procs, &mut _logger, cache);
                match res {
                    Ok(c) => cache = Some(c),
                    // exit program when we get parse error, since rest of the program is invalid
                    Err(e) => {
                        let ls =
                            if running_line == linenum {linenum.to_string()}
                        else {format!("{}-{}", running_line, linenum)};

                        let s = format!("parse error on line {}:", ls).red();
                        println!("{}\n{:?}", s, e);
                        exit(1);
                    }
                }
                running = running[ind+1..].to_string();
            }
        }
    }

    let prog_dur = prog_start.elapsed();

    if let Some(infilename) = infilename {
        let s = format!("successfully ran input file {} in {:?}", infilename, prog_dur).green();
        println!("{}", s);
    }
}
