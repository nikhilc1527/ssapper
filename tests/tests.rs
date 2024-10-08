#![cfg(test)]

use env::set_var;
use futures::executor::block_on;
use io::BufReader;
use smtlib::conf::SolverCmd;
use smtlib::proc::SmtProc;
use ssapper::*;
use std::*;
use temp_env::with_var;
use temp_env::with_vars;
use tempfile::NamedTempFile;
use time::Duration;
use time::Instant;

use rusqlite::Connection;
use std::fs::*;
use std::io::*;
use std::process::*;
use std::str::*;

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

fn test_file(infile: String, conn: &mut Option<Connection>, cache_tester: fn(usize, usize) -> ()) {
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

    let proc = SmtProc::new(
        SolverCmd {
            cmd: "z3".to_string(),
            args: vec!["-in".to_string()],
            options: vec![],
        },
        None,
    )
    .expect("couldnt start smt proc");
    let resp = block_on(parse_and_send_async(Box::new(reader), proc, conn)).expect("couldnt run");

    cache_tester(resp.cache_hits, resp.cache_misses);

    let resp_str = resp
        .queries
        .iter()
        .map(|x| x.result.clone().unwrap())
        .collect::<Vec<String>>()
        .join("\n")
        + "\n";

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
    let mut times1 = Duration::from_millis(0);
    let mut times2 = Duration::from_millis(0);
    let mut times3 = Duration::from_millis(0);

    let tmp_cache_file = NamedTempFile::new().expect("couldnt make tmp file");
    let tmp_perf_file = NamedTempFile::new().expect("couldnt make tmp file");

    let cache_tester = |tester: fn(usize, usize) -> ()| {
        if let Ok(perf_file) = env::var("SSAPPER_PERF_FILE") {
            let perf_file = File::open(perf_file).expect("couldnt open perf file");
            let mut buf1 = String::new();
            let mut buf2 = String::new();
            let mut perf_reader = BufReader::new(perf_file);

            let l = perf_reader
                .read_line(&mut buf1)
                .expect("couldnt read from perf file");
            buf1 = buf1[12..l - 1].to_string();
            let l = perf_reader
                .read_line(&mut buf2)
                .expect("couldnt read from perf file");
            buf2 = buf2[14..l - 1].to_string();
            let hits = buf1.parse::<usize>().expect("couldnt read cache hits");
            let misses = buf2.parse::<usize>().expect("couldnt read cache misses");
            tester(hits, misses);
        } else {
            assert_ne!(0, 0);
        }
    };

    Command::new("cargo")
        .arg("build")
        .arg("--release")
        .output()
        .expect("couldnt run cargo build release");

    let test = || {
        for infile in INFILES {
            let c1_start = Instant::now();

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

            let c1_end = Instant::now();
            let c2_start = Instant::now();

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
            let c2_end = Instant::now();

            assert_eq!(cmd_out1, cmd_out2);

            cache_tester(|hits, _| assert_eq!(hits, 0));

            let c3_start = Instant::now();

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

            let c3_end = Instant::now();
            assert_eq!(cmd_out1, cmd_out2);

            cache_tester(|_, misses| assert_eq!(misses, 0));

            times1 += c1_end - c1_start;
            times2 += c2_end - c2_start;
            times3 += c3_end - c3_start;
        }
    };

    with_vars(
        vec![
            ("SSAPPER_PERF_FILE", Some(tmp_perf_file.path())),
            ("SSAPPER_CACHE_FILE", Some(tmp_cache_file.path())),
        ],
        test,
    );

    println!("z3 total time: {:?}", times1);
    println!("ssapper cold: {:?}", times2);
    println!("ssapper warm: {:?}", times3);
}

#[test]
pub fn test_integration_nocache() {
    let mut conn = None;
    for infile in INFILES {
        test_file(infile.to_string(), &mut conn, |_, _| {});
    }
}

#[test]
pub fn test_integration_cache_empty() {
    let cache_file = NamedTempFile::new().expect("couldnt open temp file");

    let mut conn = Some(open_db(cache_file.path()).expect("couldnt open db file"));

    for infile in INFILES {
        test_file(infile.to_string(), &mut conn, |_, _| {});
    }

    // drop cache_file
}

#[test]
pub fn test_integration_cache_built() {
    let cache_file = NamedTempFile::new().expect("couldnt open temp file");

    let mut conn = Some(open_db(cache_file.path()).expect("couldnt open db"));

    let tmpf = NamedTempFile::new().expect("couldnt make tmp file");

    with_var("SSAPPER_PERF_FILE", Some(tmpf.path()), || {
        for infile in INFILES {
            test_file(infile.to_string(), &mut conn, |hits, misses| {
                assert_eq!(hits, 0);
                assert!(misses > 0);
            });
        }

        for infile in INFILES {
            test_file(infile.to_string(), &mut conn, |hits, misses| {
                assert_eq!(misses, 0);
                assert!(hits > 0); // need to put in logic to figure out exactly how much this number should be eventually
            });
        }
    });
}

#[test]
#[ignore = "takes too long"]
pub fn test_integration_full_stainless() {
    let cache_file = NamedTempFile::new().expect("couldnt open temp file");

    let paths = read_dir("./testing_inputs/stainless_benchmarks/").unwrap();

    let mut conn = Some(open_db(cache_file.path()).expect("couldnt open db"));

    let paths_vec: Vec<String> = paths
        .map(|path| path.unwrap().path().display().to_string())
        .collect();

    let s1 = Instant::now();
    paths_vec.iter().for_each(|infile| {
        test_file(infile.to_string(), &mut conn, |_, _| {});
    });
    let s2 = Instant::now();
    paths_vec.iter().for_each(|infile| {
        test_file(infile.to_string(), &mut conn, |_, _| {});
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
