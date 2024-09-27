use super::*;
use super::ssapper::*;
use std::*;
use serde_json::*;

use rusqlite::Connection;
use std::fs::*;
use std::str::*;
use std::process::*;

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
(check-sat) (check-sat)
; this comment shouldnt affect anything




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

    let reader =
        BufReader::new(File::open(&infile).expect("failed to open testing file"));
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
    let f = if let Some(conn) = conn {
        send_sexps_with_cache(parsed.as_slice(), &mut proc, conn) 
    } else {
        send_sexps(parsed.as_slice(), &mut proc)
    };

    let resp = match f {
        Err(r) => panic!("error sending sexps: {:?}", r),
        Ok(o) => o,
    };
    let resp_str = resp.join("\n") + "\n";

    let error_filter = |s: String| {
        s.lines()
            .filter(|s| !s.contains("error"))
            .collect::<String>()
    };

    let cmd = error_filter(cmd);
    let resp_str = error_filter(resp_str);

    assert_eq!(cmd, resp_str);
}

#[test]
pub fn test_integration_nocache() {
    // two of the longest stainless files, takes around 3 seconds total (when not caching)
    let infiles = vec![
        "./testing_inputs/stainless_benchmarks/cvc4-NA-1251.smt2",
        "./testing_inputs/stainless_benchmarks/cvc4-NA-730.smt2",
        "./testing_inputs/stainless_benchmarks/cvc4-NA-1070.smt2",
    ];
    for infile in infiles {
        test_file(infile.to_string(), None);
    }
}

#[test]
pub fn test_integration_cache() {
    let mut conn = open_db().expect("couldnt open db");

    // two of the longest stainless files, takes around 3 seconds total (when not caching)
    let infiles = vec![
        "./testing_inputs/stainless_benchmarks/cvc4-NA-1251.smt2",
        "./testing_inputs/stainless_benchmarks/cvc4-NA-730.smt2",
        "./testing_inputs/stainless_benchmarks/cvc4-NA-1070.smt2",
    ];
    for infile in infiles {
        test_file(infile.to_string(), Some(&mut conn));
    }
}

// on my machine: took 421 seconds when building cache, 160 seconds when cache already built
//                     ~300 seconds when not using caching at all
#[test]
#[ignore = "takes too long, only run if you have the time"]
pub fn test_integration_full_stainless() {
    let paths = read_dir("./testing_inputs/stainless_benchmarks/").unwrap();

    let mut conn = open_db().expect("couldnt open db");

    let paths_vec: Vec<String> = paths
        .map(|path| path.unwrap().path().display().to_string())
        .collect();

    paths_vec.iter().for_each(|infile| {
        test_file(infile.to_string(), Some(&mut conn));
    });
}
