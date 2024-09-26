use std::io::BufReader;

use crate::ssapper::{parse_file, HashedSexp};

#[test]
fn parse_test() {
    let in_str = r"
(check-sat)
(check-sat)
";
    let expected: Vec<HashedSexp> = serde_json::from_str("[{\"hash\":2405905473350807012,\"sexp\":{\"List\":[{\"Atom\":{\"S\":\"check-sat\"}}]}},{\"hash\":5811564076829442140,\"sexp\":{\"List\":[{\"Atom\":{\"S\":\"check-sat\"}}]}}]").expect("couldnt deserialize hashed sexp");
    let parsed = parse_file(BufReader::new(in_str.as_bytes()));
    assert_eq!(parsed, Ok(expected));

    let in_str2 = r"
(check-sat) (check-sat)
; this comment shouldnt affect anything




; neither should these newlines

";

    let parsed2 = parse_file(BufReader::new(in_str2.as_bytes()));
    assert_eq!(parsed2, parsed);

    println!("done asserting");

    let instr3 = "(assert (=> start!4586 (and (bvslt x!11323 y!1113) (= x$1!558 (tuple2!147 x!11323 y!1113)) (or (bvsgt (_1!99 x$1!558) (_2!99 x$1!558)) (not (= (insert (_2!99 x$1!558) (insert (_1!99 x$1!558) (as emptyset (Set (_ BitVec 32))))) (insert y!1113 (insert x!11323 (as emptyset (Set (_ BitVec 32)))))))))))";
    let parsed3 = parse_file(BufReader::new(instr3.as_bytes())).unwrap();
    println!("{}", serde_json::to_string(&parsed3).unwrap());
}
