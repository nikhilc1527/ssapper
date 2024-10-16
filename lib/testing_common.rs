use io::BufReader;
use smtlib::conf::SolverCmd;
use smtlib::proc::SmtProc;

use ssapper::*;

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
