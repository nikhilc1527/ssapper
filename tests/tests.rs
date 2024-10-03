#![cfg(test)]

use env::set_var;
use io::BufReader;
use serde_json::*;
use smtlib::conf::SolverCmd;
use smtlib::proc::SmtProc;
use ssapper::*;
use std::*;
use tempfile::NamedTempFile;
use time::Duration;
use time::Instant;

use rusqlite::Connection;
use std::fs::*;
use std::process::*;
use std::str::*;

/// this test relies on the hash function being stable, which according to rust docs its not
#[test]
fn parse_test() {
    let in_str = r"
(check-sat)
(check-sat)
";
    let parsed = parse_file(BufReader::new(in_str.as_bytes()));

    let expected: Vec<HashedSexp> = from_str("[{\"hash\":2405905473350807012,\"sexp\":{\"List\":[{\"Atom\":{\"S\":\"check-sat\"}}]},\"sexp_str\":\"(check-sat)\"},{\"hash\":5811564076829442140,\"sexp\":{\"List\":[{\"Atom\":{\"S\":\"check-sat\"}}]},\"sexp_str\":\"(check-sat)\"}]").expect("couldnt deserialize hashed sexp");
    assert_eq!(parsed, Ok(expected));

    let in_str2 = r"
(check-sat) (check-sat) ; (check-sat) should not be counted
; this comment shouldnt affect parsing



; neither should these newlines

";

    let parsed2 = parse_file(BufReader::new(in_str2.as_bytes()));

    assert_eq!(parsed2, parsed);
}

#[test]
pub fn test_run_solver() {
    let mut proc = SmtProc::new(
        SolverCmd {
            cmd: "z3".to_string(),
            args: vec!["-in".to_string()],
            options: vec![],
        },
        None,
    )
    .expect("couldnt start smt proc");
    let sexps: Vec<HashedSexp> = from_str("[{\"hash\":2405905473350807012,\"sexp\":{\"List\":[{\"Atom\":{\"S\":\"check-sat\"}}]}},{\"hash\":5811564076829442140,\"sexp\":{\"List\":[{\"Atom\":{\"S\":\"check-sat\"}}]}}]").expect("couldnt deserialize hashed sexp");

    let outputs = send_sexps(sexps.as_slice(), &mut proc);
    assert_eq!(outputs, Ok(vec!["sat".to_string(), "sat".to_string()]));
}

fn error_filter(s: String) -> String {
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

fn test_file(infile: String, conn: Option<&mut Connection>) {
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

    let reader = BufReader::new(File::open(&infile).expect("failed to open testing file"));
    let parsed = parse_file(reader).expect("failed to parse file");

    let mut proc = SmtProc::new(
        SolverCmd {
            cmd: "z3".to_string(),
            args: vec!["-in".to_string()],
            options: vec![],
        },
        None,
    )
    .expect("couldnt start smt proc");
    let resp = (if let Some(conn) = conn {
        send_sexps_with_cache(parsed.as_slice(), &mut proc, conn)
    } else {
        send_sexps(parsed.as_slice(), &mut proc)
    })
    .expect("error sending sexps");

    let resp_str = resp.join("\n") + "\n";

    let cmd = error_filter(cmd);
    let resp_str = error_filter(resp_str);

    assert_eq!(cmd, resp_str);
}

const INFILES: &[&str] = &[
    "./testing_inputs/stainless_benchmarks/cvc4-NA-1251.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-1001.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-1172.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-1755.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-1756.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-3185.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-730.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-1070.smt2",
];

#[test]
pub fn test_integration_external() {
    let mut times1 = Duration::from_secs(0);
    let mut times2 = Duration::from_secs(0);
    let mut times3 = Duration::from_secs(0);
    let mut times4 = Duration::from_secs(0);
    let tmpdb = NamedTempFile::new().expect("couldnt make tmp file");
    set_var("SSAPPER_CACHE_FILE", tmpdb.path());

    Command::new("cargo")
        .arg("build")
        .arg("--release")
        .output()
        .expect("couldnt run cargo build release");

    for infile in INFILES {
        let time1 = Instant::now();
        let cmd_out1 = error_filter(
            from_utf8(
                Command::new("z3")
                    .arg(infile)
                    .output()
                    .expect("failed to run the actual z3")
                    .stdout
                    .as_slice(),
            )
            .expect("failed to construct string out of output 1")
            .to_string(),
        );

        let time2 = Instant::now();

        let cmd_out2 = error_filter(
            from_utf8(
                Command::new("./target/release/ssapper_sync")
                    .arg(infile)
                    .output()
                    .expect("failed to run ssapper")
                    .stdout
                    .as_slice(),
            )
            .expect("failed to construct string out of output 2")
            .to_string(),
        );

        assert_eq!(cmd_out1, cmd_out2);

        let time3 = Instant::now();

        let cmd_out2 = error_filter(
            from_utf8(
                Command::new("./target/release/ssapper_sync")
                    .arg(infile)
                    .output()
                    .expect("failed to run ssapper")
                    .stdout
                    .as_slice(),
            )
            .expect("failed to construct string out of output 2")
            .to_string(),
        );
        assert_eq!(cmd_out1, cmd_out2);

        let time4 = Instant::now();

        let cmd_out2 = error_filter(
            from_utf8(
                Command::new("./target/release/ssapper")
                    .arg(infile)
                    .output()
                    .expect("failed to run ssapper")
                    .stdout
                    .as_slice(),
            )
            .expect("failed to construct string out of output 2")
            .to_string(),
        );
        let time5 = Instant::now();

        assert_eq!(cmd_out1, cmd_out2);

        times1 += time2 - time1;
        times2 += time3 - time2;
        times3 += time4 - time3;
        times4 += time5 - time4;
    }

    println!("z3 total time: {:?}", times1);
    println!("ssapper empty cache: {:?}", times2);
    println!("ssapper warm cache: {:?}", times3);
    println!("ssapper async: {:?}", times4);
}

#[test]
pub fn test_integration_nocache() {
    // two of the longest stainless files, takes around 3 seconds total (when not caching)
    for infile in INFILES {
        test_file(infile.to_string(), None);
    }
}

#[test]
pub fn test_integration_cache_empty() {
    let cache_file = NamedTempFile::new().expect("couldnt open temp file");

    let mut conn = open_db(cache_file.path()).expect("couldnt open db");

    for infile in INFILES {
        test_file(infile.to_string(), Some(&mut conn));
    }

    // drop cache_file
}

#[test]
pub fn test_integration_cache_built() {
    let cache_file = NamedTempFile::new().expect("couldnt open temp file");

    let mut conn = open_db(cache_file.path()).expect("couldnt open db");

    for infile in INFILES {
        test_file(infile.to_string(), Some(&mut conn));
    }

    for infile in INFILES {
        test_file(infile.to_string(), Some(&mut conn));
    }
}

#[test]
#[ignore = "takes too long"]
pub fn test_integration_full_stainless() {
    let cache_file = NamedTempFile::new().expect("couldnt open temp file");

    let paths = read_dir("./testing_inputs/stainless_benchmarks/").unwrap();

    let mut conn = open_db(cache_file.path()).expect("couldnt open db");

    let paths_vec: Vec<String> = paths
        .map(|path| path.unwrap().path().display().to_string())
        .collect();

    let s1 = Instant::now();
    paths_vec.iter().for_each(|infile| {
        test_file(infile.to_string(), Some(&mut conn));
    });
    let s2 = Instant::now();
    paths_vec.iter().for_each(|infile| {
        test_file(infile.to_string(), Some(&mut conn));
    });
    let s3 = Instant::now();

    println!("before caching: {:?}", s2 - s1);
    println!("after  caching: {:?}", s3 - s2);
}

#[test]
#[ignore = "takes way too long"]
pub fn test_integration_external_full() {
    let mut times1 = Duration::from_secs(0);
    let mut times2 = Duration::from_secs(0);
    let mut times3 = Duration::from_secs(0);
    let tmpdb = NamedTempFile::new().expect("couldnt make tmp file");
    set_var("SSAPPER_CACHE_FILE", tmpdb.path());

    Command::new("cargo")
        .arg("build")
        .arg("--release")
        .output()
        .expect("couldnt run cargo build release");

    let paths = read_dir("./testing_inputs/stainless_benchmarks/").unwrap();
    let paths_vec: Vec<String> = paths
        .map(|path| path.unwrap().path().display().to_string())
        .collect();

    for infile in &paths_vec {
        let time1 = Instant::now();
        let cmd_out1 = error_filter(
            from_utf8(
                Command::new("z3")
                    .arg(infile)
                    .output()
                    .expect("failed to run the actual z3")
                    .stdout
                    .as_slice(),
            )
            .expect("failed to construct string out of output 1")
            .to_string(),
        );

        let time2 = Instant::now();

        let cmd_out2 = error_filter(
            from_utf8(
                Command::new("./target/release/ssapper")
                    .arg(infile)
                    .output()
                    .expect("failed to run ssapper")
                    .stdout
                    .as_slice(),
            )
            .expect("failed to construct string out of output 2")
            .to_string(),
        );

        assert_eq!(cmd_out1, cmd_out2);

        let time3 = Instant::now();

        let cmd_out2 = error_filter(
            from_utf8(
                Command::new("./target/release/ssapper")
                    .arg(infile)
                    .output()
                    .expect("failed to run ssapper")
                    .stdout
                    .as_slice(),
            )
            .expect("failed to construct string out of output 2")
            .to_string(),
        );
        let time4 = Instant::now();

        assert_eq!(cmd_out1, cmd_out2);

        times1 += time2 - time1;
        times2 += time3 - time2;
        times3 += time4 - time3;
    }

    println!("z3 total time: {:?}", times1);
    println!("ssapper empty cache: {:?}", times2);
    println!("ssapper warm cache: {:?}", times3);
}
