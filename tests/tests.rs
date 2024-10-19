#![cfg(test)]

use io::BufReader;
use logging::get_stats;
use rayon::iter::IntoParallelIterator;
use rayon::iter::IntoParallelRefIterator;
use rayon::iter::ParallelIterator;
use rusqlite::OpenFlags;
use smtlib::conf::SolverCmd;
use smtlib::proc::SmtProc;
use ssapper::*;
use std::*;
use sync::Arc;
use sync::Mutex;
use temp_env::with_var;
use temp_env::with_vars;
use tempfile::NamedTempFile;
use time::Duration;
use time::Instant;

use std::fs::*;
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

fn test_file(infile: String, conn: Option<&str>, logfile: Option<&str>) -> PerfLog {
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
    let resp =
        parse_and_send_async(Box::new(reader), proc, conn, logfile, false).expect("couldnt run");

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

const INFILES: &[&str] = &[
    "./testing_inputs/small.smt2",
    "./testing_inputs/small2.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-67.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-1251.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-730.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-1070.smt2",
    "./testing_inputs/stainless_benchmarks/cvc4-NA-10702.smt2",
];

#[test]
pub fn test_integration_external() {
    let mut times1 = Duration::from_millis(0);
    let mut times2 = Duration::from_millis(0);
    let mut times3 = Duration::from_millis(0);

    let tmp_cache_file = NamedTempFile::new().expect("couldnt make tmp file");
    let tmp_perf_file = NamedTempFile::new().expect("couldnt make tmp file");

    Command::new("cargo")
        .arg("build")
        .arg("--release")
        .output()
        .expect("couldnt run cargo build release");

    let mut test = || {
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
                    Command::new(env!("CARGO_BIN_EXE_ssapper"))
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

            let c3_start = Instant::now();

            let cmd_out2 = error_filter(
                from_utf8(
                    Command::new(env!("CARGO_BIN_EXE_ssapper"))
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

            times1 += c1_end - c1_start;
            times2 += c2_end - c2_start;
            times3 += c3_end - c3_start;
        }
        println!("z3 total time: {:?}", times1);
        println!("ssapper cold: {:?}", times2);
        println!("ssapper warm: {:?}", times3);
        times1 = Duration::ZERO;
        times2 = Duration::ZERO;
        times3 = Duration::ZERO;
    };

    with_vars(
        vec![
            ("SSAPPER_PERF_FILE", Some(tmp_perf_file.path())),
            ("SSAPPER_CACHE_FILE", Some(tmp_cache_file.path())),
        ],
        &mut test,
    );

    println!();
}

#[test]
pub fn test_integration_nocache() {
    let i1 = Instant::now();
    for infile in INFILES {
        test_file(infile.to_string(), None, None);
    }
    println!("no cache: {:?}", i1.elapsed());
}

#[test]
pub fn test_integration_cache_empty() {
    let cache_file = NamedTempFile::new().expect("couldnt open temp file");

    for infile in INFILES {
        test_file(
            infile.to_string(),
            Some(cache_file.path().to_str().unwrap()),
            None,
        );
    }

    // drop cache_file
}

#[test]
pub fn test_integration_cache_built() {
    let cache_file = NamedTempFile::new().expect("couldnt open temp file");
    let cache_file_path = cache_file.path().to_str().unwrap();
    let tmpf = NamedTempFile::new().expect("couldnt make tmp file");
    let tmpfile_path = tmpf.path().to_str().unwrap();

    let i1 = Instant::now();
    for infile in INFILES {
        test_file(
            infile.to_string(),
            Some(cache_file_path),
            Some(tmpfile_path),
        );
    }
    println!("cache cold: {:?}", i1.elapsed());
    let i2 = Instant::now();

    for infile in INFILES {
        let log = test_file(
            infile.to_string(),
            Some(cache_file_path),
            Some(tmpfile_path),
        );

        assert_eq!(log.cache_misses, 0);
        assert!(log.cache_hits > 0); // need to put in logic to figure out exactly how much this number should be eventually
    }
    println!("cache warm: {:?}", i2.elapsed());
}

#[test]
pub fn test_perf() {
    let cache_file = NamedTempFile::new().expect("couldnt open temp file");

    let perf_file = NamedTempFile::new().expect("couldnt open temp file");
    {
        let perf = open_db(&perf_file, OpenFlags::default()).expect("couldnt open perf");
        init_perf(&perf).expect("couldnt init perf");
    }

    let log = test_file(
        "./testing_inputs/small.smt2".to_string(),
        Some(cache_file.path().to_str().unwrap()),
        perf_file.path().to_str(),
    );
    assert_eq!(log.cache_hits, 0);
    assert_eq!(log.cache_misses, 1);

    let log = test_file(
        "./testing_inputs/small.smt2".to_string(),
        Some(cache_file.path().to_str().unwrap()),
        perf_file.path().to_str(),
    );
    assert_eq!(log.cache_hits, 1);
    assert_eq!(log.cache_misses, 0);

    let log = test_file(
        "./testing_inputs/small2.smt2".to_string(),
        Some(cache_file.path().to_str().unwrap()),
        perf_file.path().to_str(),
    );
    assert_eq!(log.cache_hits, 1);
    assert_eq!(log.cache_misses, 1);

    let stats = get_stats(perf_file.path().to_str().unwrap()).expect("couldnt get stats");

    assert_eq!(stats[0].cache_hits, 0);
    assert_eq!(stats[0].cache_misses, 1);
    assert_eq!(stats[1].cache_hits, 1);
    assert_eq!(stats[1].cache_misses, 0);
    assert_eq!(stats[2].cache_hits, 1);
    assert_eq!(stats[2].cache_misses, 1);

    let cmd = Command::new(env!("CARGO_BIN_EXE_ssapper-tool"))
        .arg("stats")
        .arg("--summary")
        .arg(perf_file.path().to_str().unwrap())
        .output()
        .expect("couldnt get tool output");
    let perf_contents =
        from_utf8(cmd.stdout.as_slice()).expect("couldnt construct utf8 out of tool output");

    assert_eq!(
        perf_contents,
        "( 1) -   0/  1 -   0.00%\n( 2) -   1/  0 - 100.00%\n( 3) -   1/  1 -  50.00%\n"
    );
}

#[test]
#[ignore = "takes too long"]
pub fn test_integration_full_stainless() {
    let cache_file = NamedTempFile::new().expect("couldnt open temp file");

    let paths = read_dir("./testing_inputs/stainless_benchmarks/").unwrap();

    let paths_vec: Vec<String> = paths
        .map(|path| path.unwrap().path().display().to_string())
        .collect();

    let s1 = Instant::now();
    paths_vec
        .iter()
        .enumerate()
        .collect::<Vec<(usize, &String)>>()
        .par_iter()
        .for_each(|(i, infile)| {
            if i % 100 == 0 {
                println!("{i}: {:?}", s1.elapsed());
            }
            test_file(
                infile.to_string(),
                Some(cache_file.path().to_str().unwrap()),
                None,
            );
        });
    let s2 = Instant::now();
    paths_vec
        .iter()
        .enumerate()
        .collect::<Vec<(usize, &String)>>()
        .par_iter()
        .for_each(|(i, infile)| {
            test_file(
                infile.to_string(),
                Some(cache_file.path().to_str().unwrap()),
                None,
            );
            if i % 100 == 0 {
                println!("{i}: {:?}", s1.elapsed());
            }
        });
    let s3 = Instant::now();

    println!("before caching: {:?}", s2 - s1);
    println!("after  caching: {:?}", s3 - s2);
}

#[test]
#[ignore = "takes way too long"]
pub fn test_integration_external_full() {
    let times1 = Arc::new(Mutex::new(Duration::from_secs(0)));
    let times2 = Arc::new(Mutex::new(Duration::from_secs(0)));
    let times3 = Arc::new(Mutex::new(Duration::from_secs(0)));

    Command::new("cargo")
        .arg("build")
        .arg("--release")
        .output()
        .expect("couldnt run cargo build release");

    let paths = read_dir("./testing_inputs/stainless_benchmarks/").unwrap();
    let paths_vec: Vec<String> = paths
        .map(|path| path.unwrap().path().display().to_string())
        .collect();

    paths_vec.into_par_iter().for_each(|infile| {
        let tmpdb = NamedTempFile::new().expect("couldnt make tmp file");

        let times1 = Arc::clone(&times1);
        let times2 = Arc::clone(&times2);
        let times3 = Arc::clone(&times3);

        with_var("SSAPPER_CACHE_FILE", Some(tmpdb.path()), || {
            let time1 = Instant::now();
            let cmd_out1 = error_filter(
                from_utf8(
                    Command::new("z3")
                        .arg(&infile)
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
                    Command::new(env!("CARGO_BIN_EXE_ssapper"))
                        .arg(&infile)
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
                    Command::new(env!("CARGO_BIN_EXE_ssapper"))
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

            *times1.lock().unwrap() += time2 - time1;
            *times2.lock().unwrap() += time3 - time2;
            *times3.lock().unwrap() += time4 - time3;
        });
    });

    println!("z3 total time: {:?}", times1.lock());
    println!("ssapper empty cache: {:?}", times2.lock());
    println!("ssapper warm cache: {:?}", times3.lock());
}
