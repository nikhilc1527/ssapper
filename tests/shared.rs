use ssapper::*;
use std::*;

use std::fs::*;
use std::process::*;
use std::str::*;

use io::BufReader;
use smtlib::conf::SolverCmd;
use smtlib::proc::SmtProc;

pub fn error_filter(s: String) -> String {
    s.lines()
        .map(|line| {
            line.split(" ")
                .map(|word| {
                    (if word.parse::<u32>().is_ok() {
                        "LINE"
                    } else {
                        word
                    })
                    .to_string()
                })
                .reduce(|s1, s2| s1 + " " + &s2)
                .unwrap()
        })
        .collect::<String>()
}

pub fn run_file(infile: String, conn: Option<&str>, logfile: Option<&str>) -> PerfLog {
    let reader = BufReader::new(File::open(&infile).expect("failed to open testing file"));

    let proc = SmtProc::new(
        SolverCmd {
            cmd: "z3".to_string(),
            args: vec!["-in".to_string()],
            options: vec![],
        },
        None,
    )
    .expect("couldnt start smt proc");
    parse_and_send_async(Box::new(reader), proc, conn, logfile, false).expect("couldnt run")
}

pub fn test_file(infile: String, conn: Option<&str>, logfile: Option<&str>) -> PerfLog {
    let cmd = from_utf8(
        Command::new("z3")
            .arg(&infile)
            .output()
            .expect("failed to run the actual z3")
            .stdout
            .as_slice(),
    )
    .expect("failed to construct string out of output")
    .to_string();

    let resp = run_file(infile, conn, logfile);

    let resp_str = resp
        .queries
        .iter()
        .map(|x| x.output.as_str())
        .collect::<Vec<&str>>()
        .join("\n")
        + "\n";

    let cmd = error_filter(cmd);
    let resp_str = error_filter(resp_str);

    assert_eq!(cmd, resp_str);

    resp
}

pub const INFILES: &[&str] = &[
    "./testing_inputs/small.smt2",
    "./testing_inputs/small2.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-1251.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-730.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-1070.smt2",
];
