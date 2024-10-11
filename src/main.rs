// #![feature(test)]
// extern crate test;

use std::{
    env,
    fs::File,
    io::{stdin, BufRead, BufReader},
};

use clap::Parser;

use futures::executor::block_on;
use rusqlite::{Connection, OpenFlags};
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
            Some(_) => (
                Box::new(stdin().lock()),
                SolverCmd {
                    cmd: "z3".to_string(),
                    args: opts.clone(),
                    options: vec![],
                },
            ),
        }
    };

    let mut conn = env::var("SSAPPER_CACHE_FILE")
        .ok()
        .map(|file| {
            let conn = open_db(&file, OpenFlags::default())?;
            conn.execute(
                "CREATE TABLE IF NOT EXISTS computations (
                 hash TEXT PRIMARY KEY,
                 result_value TEXT NOT NULL
                 )",
                [],
            )?;

            conn.execute(
                "CREATE INDEX IF NOT EXISTS idx_computations_hash ON computations (hash)",
                [],
            )?;

            let conn = open_db(file, OpenFlags::SQLITE_OPEN_READ_ONLY)?;
            Ok(conn)
        })
        .map(|f: Result<Connection, rusqlite::Error>| f.expect("couldnt open cache file"));

    let proc = SmtProc::new(cmd, None).expect("failed to start z3 proc");

    let outputs = parse_and_send_async(inlines, proc, &mut conn);

    let outputs = block_on(outputs).expect("couldnt parse and send");

    // panic!("bla");

    if let Ok(perf_file) = env::var("SSAPPER_PERF_FILE") {
        let mut conn =
            open_db(perf_file, OpenFlags::default()).expect("couldnt open perf file connection");
        // if let Ok(mut conn) = open_db(perf_file, OpenFlags::default()) {
        log_results(&outputs, &mut conn).expect("couldnt log results");
        // } else {
        //     eprintln!("couldnt open connection");
        // }
    }
    // let outputs = outputs.queries;

    // for out in outputs {
    //     println!("{}", out.result.unwrap());
    // }
}
