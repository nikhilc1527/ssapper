#![cfg(test)]

use logging::get_stats;
use rayon::iter::IntoParallelIterator;
use rayon::iter::ParallelIterator;
use rusqlite::OpenFlags;
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

mod shared;

use shared::*;

#[test]
fn test_integration_external() {
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
    println!("i1: {:?}", i1.elapsed());
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
    println!("i2: {:?}", i2.elapsed());
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
    paths_vec.iter().enumerate().for_each(|(i, infile)| {
        test_file(
            infile.to_string(),
            Some(cache_file.path().to_str().unwrap()),
            None,
        );
        if i % 100 == 0 {
            println!("{i}: {:?}", s1.elapsed());
        }
    });
    let s2 = Instant::now();
    paths_vec.iter().enumerate().for_each(|(i, infile)| {
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
                    Command::new("./target/release/ssapper")
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

            *times1.lock().unwrap() += time2 - time1;
            *times2.lock().unwrap() += time3 - time2;
            *times3.lock().unwrap() += time4 - time3;
        });
    });

    println!("z3 total time: {:?}", times1.lock());
    println!("ssapper empty cache: {:?}", times2.lock());
    println!("ssapper warm cache: {:?}", times3.lock());
}
