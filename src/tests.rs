use super::ssapper::*;
use super::*;
use serde_json::*;
use std::*;

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

    let error_filter = |s: String| {
        s.lines()
            // .filter(|s| !s.contains("error"))
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
    };

    let cmd = error_filter(cmd);
    let resp_str = error_filter(resp_str);

    println!("cmd: {}", cmd);
    println!("resp_str: {}", resp_str);

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
pub fn test_integration_nocache() {
    // two of the longest stainless files, takes around 3 seconds total (when not caching)
    for infile in INFILES {
        test_file(infile.to_string(), None);
    }
}

#[test]
pub fn test_integration_cache_empty() {
    let cache_file = "/tmp/test_cache2.db";

    let _ = remove_file(cache_file);

    let mut conn = open_db(cache_file).expect("couldnt open db");

    // two of the longest stainless files, takes around 3 seconds total (when not caching)
    for infile in INFILES {
        test_file(infile.to_string(), Some(&mut conn));
    }
}

#[test]
pub fn test_integration_cache_built() {
    let cache_file = "/tmp/test_cache1.db";

    let mut conn = open_db(cache_file).expect("couldnt open db");

    // two of the longest stainless files, takes around 3 seconds total (when not caching)
    for infile in INFILES {
        test_file(infile.to_string(), Some(&mut conn));
    }
}

// on my machine: took 421 seconds when building cache, 160 seconds when cache already built
//                     ~300 seconds when not using caching at all
#[test]
#[ignore = "takes too long, only run if you have the time"]
pub fn test_integration_full_stainless() {
    let cache_file = "/tmp/test_cache3.db";

    let paths = read_dir("./testing_inputs/stainless_benchmarks/").unwrap();

    let mut conn = open_db(cache_file).expect("couldnt open db");

    let paths_vec: Vec<String> = paths
        .map(|path| path.unwrap().path().display().to_string())
        .collect();

    paths_vec.iter().for_each(|infile| {
        test_file(infile.to_string(), Some(&mut conn));
    });
}
