use smtlib::{conf::SolverCmd, proc::SmtProc};

use crate::ssapper::{parse_file, send_sexps, HashedSexp};

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
    let sexp: Vec<HashedSexp> = serde_json::from_str("[{\"hash\":2405905473350807012,\"sexp\":{\"List\":[{\"Atom\":{\"S\":\"check-sat\"}}]}},{\"hash\":5811564076829442140,\"sexp\":{\"List\":[{\"Atom\":{\"S\":\"check-sat\"}}]}}]").expect("couldnt deserialize hashed sexp");

    let outputs = send_sexps(sexp.as_slice(), &mut proc);
    assert_eq!(outputs, vec!["sat", "sat"]);
}
