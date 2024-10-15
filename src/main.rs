use std::{
    env,
    fs::File,
    io::{stdin, BufRead, BufReader},
};

use clap::Parser;

use rusqlite::OpenFlags;
use sha256::digest;
use smtlib::{conf::SolverCmd, proc::SmtProc};
use ssapper::{init_cache, open_db, parse_and_send_async, Z3_CHECKSUM};
use which::which;

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
/// SSAPPER_CACHE_FILE:  path to file where queries cache should be stored
/// SSAPPER_PERF_FILE:   path to file where cache hits/misses and timing information should be stored
/// SSAPPER_SOLVER_PATH: path to underlying z3 solver binary
fn main() {
    let cli = Cli::parse();
    let opts = cli.opts;

    let z3_path = match env::var("SSAPPER_SOLVER_PATH") {
        Ok(path) => path,
        Err(_) => match which("z3") {
            Ok(path) => path
                .to_str()
                .expect("couldnt get valid z3 path")
                .to_string(),
            Err(e) => panic!("could not find z3 binary: {}", e),
        },
    };

    Z3_CHECKSUM
        .set(digest(&z3_path))
        .expect("couldnt set z3 path");

    let (inlines, cmd): (Box<dyn BufRead>, SolverCmd) = {
        match opts.iter().position(|x| x == "-in") {
            None => (
                Box::new(BufReader::new(
                    File::open(opts.last().unwrap()).expect("could not open file"),
                )),
                SolverCmd {
                    cmd: z3_path,
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
                    cmd: z3_path,
                    args: opts.clone(),
                    options: vec![],
                },
            ),
        }
    };

    let conn = env::var("SSAPPER_CACHE_FILE").ok().inspect(|file| {
        let conn = open_db(file, OpenFlags::default()).expect("couldnt open cache");

        init_cache(&conn).expect("couldnt init cache db");
    });

    let proc = SmtProc::new(cmd, None).expect("failed to start z3 proc");

    let _outputs = parse_and_send_async(
        inlines,
        proc,
        conn.as_deref(),
        env::var("SSAPPER_PERF_FILE").ok().as_deref(),
        true,
    )
    .expect("couldnt parse and send");

    // panic!("bla");

    // if let Ok(perf_file) =  {
    //     log_results(&outputs, &perf_file).expect("couldnt log results");
    // }
    // let outputs = outputs.queries;

    // for out in outputs {
    //     println!("{}", out.result.unwrap());
    // }
}
