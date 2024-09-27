#[test]
fn parse_test() {
    let in_str = r"
(check-sat)
(check-sat)
";
    let parsed = crate::ssapper::parse_file(std::io::BufReader::new(in_str.as_bytes()));

    let expected: Vec<crate::ssapper::HashedSexp> = serde_json::from_str("[{\"hash\":2405905473350807012,\"sexp\":{\"List\":[{\"Atom\":{\"S\":\"check-sat\"}}]},\"sexp_str\":\"(check-sat)\"},{\"hash\":5811564076829442140,\"sexp\":{\"List\":[{\"Atom\":{\"S\":\"check-sat\"}}]},\"sexp_str\":\"(check-sat)\"}]").expect("couldnt deserialize hashed sexp");
    assert_eq!(parsed, Ok(expected));

    let in_str2 = r"
(check-sat) (check-sat)
; this comment shouldnt affect anything




; neither should these newlines

";

    let parsed2 = crate::ssapper::parse_file(std::io::BufReader::new(in_str2.as_bytes()));

    assert_eq!(parsed2, parsed);
}

#[test]
pub fn test_run_solver() {
    let mut proc = smtlib::proc::SmtProc::new(
        smtlib::conf::SolverCmd {
            cmd: "z3".to_string(),
            args: vec!["-in".to_string()],
            options: vec![],
        },
        None,
    )
    .expect("couldnt start smt proc");
    let sexp: Vec<crate::ssapper::HashedSexp> = serde_json::from_str("[{\"hash\":2405905473350807012,\"sexp\":{\"List\":[{\"Atom\":{\"S\":\"check-sat\"}}]}},{\"hash\":5811564076829442140,\"sexp\":{\"List\":[{\"Atom\":{\"S\":\"check-sat\"}}]}}]").expect("couldnt deserialize hashed sexp");

    let outputs = crate::ssapper::send_sexps(sexp.as_slice(), &mut proc);
    assert_eq!(outputs, Ok(vec!["sat".to_string(), "sat".to_string()]));
}

fn test_file(infile: String, conn: &mut Connection) {
    let cmd = std::str::from_utf8(
        std::process::Command::new("z3")
            .arg(&infile)
            .output()
            .expect("failed to run the actual z3")
            .stdout
            .as_slice(),
    )
    .expect("failed to construct string out of output")
    .to_string();

    let reader =
        std::io::BufReader::new(std::fs::File::open(&infile).expect("failed to open testing file"));
    let parsed = crate::ssapper::parse_file(reader).expect("failed to parse file");

    let mut proc = smtlib::proc::SmtProc::new(
        smtlib::conf::SolverCmd {
            cmd: "z3".to_string(),
            args: vec!["-in".to_string()],
            options: vec![],
        },
        None,
    )
    .expect("couldnt start smt proc");
    let resp = match crate::ssapper::send_sexps_with_cache(parsed.as_slice(), &mut proc, conn) {
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
pub fn test_integration() {
    let mut conn = open_db().expect("couldnt open db");

    // two of the longest stainless files, takes around 3 seconds total (when not caching)
    let infiles = vec![
        "./testing_inputs/stainless_benchmarks/cvc4-NA-1251.smt2",
        "./testing_inputs/stainless_benchmarks/cvc4-NA-730.smt2",
        "./testing_inputs/stainless_benchmarks/cvc4-NA-1070.smt2",
    ];
    for infile in infiles {
        test_file(infile.to_string(), &mut conn);
    }
}

use rusqlite::Connection;

use crate::ssapper::open_db;

// on my machine: took 421 seconds when building cache, 160 seconds when cache already built
//                     ~300 seconds when not using caching at all
#[test]
#[ignore = "takes too long, only run if you have the time"]
pub fn test_integration_full_stainless() {
    let paths = std::fs::read_dir("./testing_inputs/stainless_benchmarks/").unwrap();

    let mut conn = open_db().expect("couldnt open db");

    let paths_vec: Vec<String> = paths
        .map(|path| path.unwrap().path().display().to_string())
        .collect();

    paths_vec.iter().for_each(|infile| {
        test_file(infile.to_string(), &mut conn);
    });
}
