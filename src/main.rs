mod ssapper;

use std::{
    borrow::BorrowMut,
    env,
    fs::File,
    io::{stdin, stdout, BufRead, BufReader, BufWriter, Write},
    path::PathBuf,
};

extern crate clap;
extern crate colored;
extern crate peg;
extern crate rayon;
extern crate smtlib;

use clap::Parser;

use rayon::prelude::*;

use smtlib::{conf::SolverCmd, proc::SmtProc};
use ssapper::{parse_file, send_sexps};

// struct Logging {
//     outfile: Option<BufWriter<File>>,
// }

// impl Logging {
//     fn new(out: Option<&String>) -> Logging {
//         let writer = out.map(|outfilename| BufWriter::new(File::create(outfilename).unwrap()));

//         Logging { outfile: writer }
//     }

//     fn log(&mut self, s: &str) {
//         match &mut (self.outfile) {
//             Some(file) => {
//                 file.write_all(s.as_bytes()).unwrap();
//             }
//             None => (),
//         }
//     }
// }

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

// #[derive(Debug)]
// struct Cache(HashMap<Sexp, Vec<Status>>); // sexp sent, responses

// fn handle_sexp(
//     sexp_str: &str,
//     _linenum: usize,
//     _running_line: usize,
//     procs: &mut [SmtProc],
//     logger: &mut Logging,
//     cache: Option<Cache>,
// ) -> Result<Cache, peg::error::ParseError<LineCol>> {
//     let sexp = parse(sexp_str)?;
//     let get_response = is_response_needed(&sexp);
//     let mut cached = None;
//     if let Some(cache) = &cache {
//         let Cache(caches) = cache;

//         if let Some(resp) = caches.get(&sexp) {
//             cached = Some(resp.clone());
//         }
//     }

//     let res = match &cached {
//         Some(resp) => resp.clone(),
//         None => send_all(&sexp, procs, get_response),
//     };
//     if get_response {
//         // logger.log(&format!("line {}, response to {}\n", linenum, sexp_str));
//         for r in &res {
//             let Status(_i, _dur, s) = r;
//             // logger.log(&format!("{}th solver took {:?}:\n{}\n", i + 1, dur, s));
//             logger.log(&format!("{s}\n"));
//         }
//     }

//     if !get_response {
//         Ok(Cache(HashMap::new()))
//     } else {
//         let Cache(mut v) = cache.unwrap_or(Cache(HashMap::new()));

//         if cached.is_none() {
//             v.insert(sexp, res);
//         }

//         Ok(Cache(v))
//     }
// }

#[derive(Parser)]
#[command(version, about, long_about = None)]
struct Cli {
    /// Optional name to operate on
    name: Option<String>,

    #[arg(short, long)]
    inputfile: Option<PathBuf>,

    #[arg(short, long)]
    outputfile: Option<PathBuf>,

    #[arg(short, long)]
    solver: Vec<String>,

    /// Turn debugging information on
    #[arg(short, long, action = clap::ArgAction::Count)]
    debug: u8,
}

fn main() {
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
            SmtProc::new(cmd, None).unwrap_or_else(|_| panic!("failed to run solver {}", solver)),
        );
    }

    println!("finished reading cli");
    let sexps = parse_file(inlines).expect("failed to parse input");

    let mut output_writer: Box<dyn Write> = match cli.outputfile {
        None => Box::new(BufWriter::new(stdout())),
        Some(file) => Box::new(BufWriter::new(
            File::create(file).expect("couldnt open output file"),
        )),
    };

    println!("finished parsing");
    for proc in &mut procs {
        send_sexps(sexps.as_slice(), proc, &mut output_writer);
        // let outputs = send_sexps(sexps.as_slice(), proc, output_writer.borrow_mut());
        // for out in &outputs {
        //     writeln!(output_writer, "{}", out).expect("couldnt write to output");
        // }
    }

    // println!("{:?}", sexps);

    // if let Some(infilename) = infilename {
    //     let s = format!(
    //         "successfully ran input file {} in {:?}",
    //         infilename, prog_dur
    //     )
    //     .green();
    //     println!("{}", s);
    // }
}
