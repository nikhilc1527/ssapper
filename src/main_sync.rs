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

use smtlib::{conf::SolverCmd, proc::SmtProc};
use ssapper::{open_db, parse_file, send_sexps, send_sexps_with_cache};

/// Z3-like CLI options
#[derive(Parser, Debug)]
#[command(name = "ssapper")]
#[command(allow_hyphen_values = true)]
struct Cli {
    /// all options to forward to z3
    #[arg(trailing_var_arg = true)]
    opts: Vec<String>,
}

// all options taken from env variables
pub fn main() {
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

    let sexps = parse_file(inlines).expect("failed to parse input");

    // let mut buf = Vec::new();
    // inlines.read_to_end(&mut buf);
    // let sexps = parse_many(std::str::from_utf8(&buf).expect("couldnt get str from utf8"))
    //     .expect("failed to parse input");
    // let mut conn = env::var("SSAPPER_CACHE_FILE")
    //     .ok()
    //     .map(|file| open_db(file).expect("couldnt open db"))
    //     .expect("no db file");
    let conn = env::var("SSAPPER_CACHE_FILE")
        .ok()
        .map(|file| open_db(file).expect("couldnt open db"));

    let mut proc = SmtProc::new(cmd, None).expect("failed to start z3 proc");

    // for s in &sexps {
    //     let s1 = Instant::now();
    //     proc.send(s);
    //     proc.get_response(|s| s.to_string());
    //     let s2 = Instant::now();
    //     total_time += s2 - s1;
    // }

    let outputs = match conn {
        Some(mut conn) => send_sexps_with_cache(sexps.as_slice(), &mut proc, &mut conn),
        None => send_sexps(sexps.as_slice(), &mut proc),
    }
    .expect("couldnt send file to z3 instance");
    // let outputs =
    //     parse_file_and_send(inlines, &mut proc, &mut conn).expect("couldnt parse and send sexps");

    for out in outputs {
        println!("{}", out);
    }
}
