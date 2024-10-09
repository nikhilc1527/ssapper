// #![feature(test)]
// extern crate test;

use std::{
    env,
    fs::File,
    io::{stdin, BufRead, BufReader},
};

extern crate clap;
extern crate colored;
extern crate peg;
extern crate serde;
extern crate smtlib;
extern crate thiserror;

use clap::Parser;

use futures::executor::block_on;
use rusqlite::Connection;
use smtlib::{conf::SolverCmd, proc::SmtProc};
use ssapper::{log_results, open_db, parse_and_send_async};

/// Z3-like CLI options
#[derive(Parser, Debug)]
#[command(name = "ssapper")]
#[command(allow_hyphen_values = true)]
struct Cli {
    /// all options to forward to z3
    #[arg(trailing_var_arg = true)]
    opts: Vec<String>,
}

/// all options taken from env variables
/// OPTIONS:
/// SSAPPER_CACHE_FILE: path to file where queries cache should be stored
fn main() {
    // setup solvers
    let opts = Cli::parse().opts;

    let (inlines, cmd): (Box<dyn BufRead>, SolverCmd) = {
        match opts.iter().position(|x| x == "-in") {
            None => (
                Box::new(BufReader::new(
                    File::open(opts.last().unwrap()).expect("could not open file"),
                )),
                SolverCmd {
                    cmd: "z3".to_string(),
                    args: {
                        let mut o = opts.clone();
                        o.pop();
                        o.push("-in".to_string());
                        o
                    },
                    options: vec![],
                },
            ),
            Some(pos) => (
                Box::new(stdin().lock()),
                SolverCmd {
                    cmd: "z3".to_string(),
                    args: {
                        let mut o = opts.clone();
                        o[pos] = "-in".to_string();
                        o
                    },
                    options: vec![],
                },
            ),
        }
    };

    let mut conn = env::var("SSAPPER_CACHE_FILE")
        .ok()
        .map(|file| open_db(file).expect("couldnt open db"));

    let proc = SmtProc::new(cmd, None).expect("failed to start z3 proc");

    let outputs = parse_and_send_async(inlines, proc, &mut conn);

    let outputs = block_on(outputs).expect("couldnt parse and send");

    if let Ok(perf_file) = env::var("SSAPPER_PERF_FILE") {
        if let Ok(mut conn) = Connection::open(perf_file) {
            log_results(&outputs, &mut conn).expect("couldnt log results");
        } else {
            println!("couldnt open connection");
        }
        // let f = File::create(perf_file).expect("failed to open perf file");
        // let mut w = BufWriter::new(f);
        // writeln!(w, "cache hits: {}", outputs.cache_hits).expect("failed to write to perf file");
        // writeln!(w, "cache misses: {}", outputs.cache_misses)
        //     .expect("failed to write to perf file");
    }
    let outputs = outputs.queries;

    for out in outputs {
        println!("{}", out.result.unwrap());
    }
}
