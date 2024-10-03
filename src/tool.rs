use std::{
    fs::File,
    io::{stdin, stdout, BufRead, BufReader, BufWriter, Write},
    path::PathBuf,
};

extern crate clap;
extern crate colored;
extern crate peg;
extern crate serde;
extern crate smtlib;
extern crate thiserror;

use clap::Parser;

use smtlib::{conf::SolverCmd, proc::SmtProc};
use ssapper::{open_db, parse_file, send_sexps_with_cache};

// #[derive(Debug, Clone)]
// struct Status(
//     usize,    // index of solver
//     Duration, // duration that solver took to solve
//     String,   // response (in case of check-sat, get-model, etc)
// );

// fn for_all_par<F>(procs: &mut [SmtProc], f: F) -> Vec<Status>
// where
//     F: Fn(usize, &mut SmtProc) -> Status + std::marker::Sync,
// {
//     let responses = Mutex::new(Vec::new());
//     procs.par_iter_mut().enumerate().for_each(|(i, p)| {
//         let s = f(i, p);

//         let mut rl = responses.lock().unwrap();
//         rl.push(s);
//     });

//     responses.into_inner().unwrap()
// }

// fn send_all(sexp: &Sexp, procs: &mut [SmtProc], get_resp: bool) -> Vec<Status> {
//     let f = |i: usize, p: &mut SmtProc| {
//         let start = Instant::now();
//         // begin timing

//         p.send(sexp);
//         let res = if get_resp {
//             p.get_response(|s| s.to_string()).unwrap()
//         } else {
//             let r = p.get_response(|s| s.to_string());
//             if let Err(SolverError::UnexpectedClose(msg)) = r {
//                 println!("{}", format!("ERROR: {:?}", msg).magenta());
//             }

//             "".to_string()
//         };

//         // end timing
//         let duration = start.elapsed();
//         Status(i, duration, res)
//     };

//     for_all_par(procs, f)
// }

#[derive(Parser)]
#[command(version, about, long_about = None)]
struct Cli {
    /// input to solvers (leave empty for stdin)
    #[arg(short, long)]
    inputfile: Option<PathBuf>,

    /// output from solvers (leave empty for stdout)
    #[arg(short, long)]
    outputfile: Option<PathBuf>,

    /// one or more solvers to run - each should be specified to take input from stdin
    #[arg(short, long, required = true)]
    solver: Vec<String>,

    /// run solvers incrementally
    #[arg(long, default_value_t = false)]
    incremental: bool,

    /// take output of first solver to finish instead of waiting for all solvers to finish
    #[arg(short, long, default_value_t = false)]
    take_first: bool,

    /// db file to use as cache (leave empty for none)
    #[arg(short, long)]
    cache: Option<String>,
}

pub fn main() {
    // setup solvers
    let cli = Cli::parse();

    let inlines: Box<dyn BufRead> = match cli.inputfile {
        None => Box::new(stdin().lock()),
        Some(filename) => Box::new(BufReader::new(
            File::open(filename).expect("could not open file"),
        )),
    };

    let mut procs: Vec<SmtProc> = Vec::new();

    for solver in &cli.solver {
        let split: Vec<&str> = solver.split(' ').collect();

        let cmd = SolverCmd {
            cmd: split[0].to_string(),
            args: split[1..split.len()]
                .iter()
                .map(|s| s.to_string())
                .collect(),
            options: vec![],
        };
        // running commands straight from user input feels iffy
        // also assuming that input of command is well-formed

        procs.push(
            SmtProc::new(cmd, None)
                .unwrap_or_else(|_| panic!("failed to start solver command {}", solver)),
        );
    }

    let sexps = parse_file(inlines).expect("failed to parse input");

    let mut output_writer: Box<dyn Write> = match cli.outputfile {
        None => Box::new(BufWriter::new(stdout())),
        Some(file) => Box::new(BufWriter::new(
            File::create(file).expect("couldnt open output file"),
        )),
    };

    let mut conn = open_db("/tmp/test_cache3.db").expect("couldnt open db");

    for proc in &mut procs {
        let outputs =
            send_sexps_with_cache(sexps.as_slice(), proc, &mut conn).expect("couldnt send sexps");

        for out in &outputs {
            writeln!(output_writer, "{}", out).expect("couldnt write to output");
        }
    }
}
