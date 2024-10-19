use std::{
    env,
    fs::{File, OpenOptions},
    io::{stdin, BufRead, BufReader, Write},
    process::Command,
};

use anyhow::{anyhow, ensure};
use clap::Parser;

use rusqlite::OpenFlags;
use sha256::digest;
use smtlib::{conf::SolverCmd, proc::SmtProc};
use ssapper::{init_cache, open_db, parse_and_send_async, Z3_CHECKSUM};
use which::which;

#[derive(Parser, Debug)]
#[command(name = "ssapper")]
#[command(allow_hyphen_values = true)]
struct Cli {
    /// all options to forward to z3
    #[arg(trailing_var_arg = true)]
    opts: Vec<String>,
}

/// all options taken from env variables
/// OPTIONS:
/// SSAPPER_CACHE_FILE:  path to file where queries cache should be stored
/// SSAPPER_PERF_FILE:   path to file where cache hits/misses and timing information should be stored
/// SSAPPER_SOLVER_PATH: path to underlying z3 solver binary
fn main() -> anyhow::Result<()> {
    let cli = Cli::parse();
    let mut opts = cli.opts;

    let z3_path: String = match env::var("SSAPPER_SOLVER_PATH") {
        Ok(path) => path,
        _ => {
            let p = which("z3")?;
            p.to_str()
                .ok_or(anyhow!("couldnt construct z3 path"))?
                .to_string()
        }
    };

    Z3_CHECKSUM.set(digest(&z3_path)).map_err(|e| anyhow!(e))?;

    ensure!(!opts.is_empty(), "need at least one option");
    if opts.iter().any(|x| x == "-version") {
        // TODO: figure out what other options need to handle special case
        let mut cmd = Command::new(&z3_path).arg("-version").spawn()?;
        cmd.wait()?;
        return Ok(());
    };

    let (inlines, cmd): (Box<dyn BufRead>, SolverCmd) = {
        match opts.iter().position(|x| x == "-in") {
            None => (
                // assuming that the input file is the last arg
                Box::new(BufReader::new(File::open(opts.last().unwrap())?)),
                SolverCmd {
                    cmd: z3_path,
                    args: {
                        *opts.last_mut().unwrap() = "-in".to_string();
                        opts
                    },
                    options: vec![],
                },
            ),
            Some(_) => (
                Box::new(stdin().lock()),
                SolverCmd {
                    cmd: z3_path,
                    args: opts,
                    options: vec![],
                },
            ),
        }
    };

    let conn = match env::var("SSAPPER_CACHE_FILE") {
        Ok(file) => {
            let conn = open_db(&file, OpenFlags::default())?;
            init_cache(&conn)?;

            Some(file)
        }
        _ => None,
    };

    let proc = SmtProc::new(cmd, None)?;

    let _outputs = parse_and_send_async(
        inlines,
        proc,
        conn.as_deref(),
        env::var("SSAPPER_PERF_FILE").ok().as_deref(),
        true,
    )?;

    Ok(())
}
