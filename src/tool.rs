use std::path::PathBuf;

extern crate clap;
extern crate colored;
extern crate peg;
extern crate serde;
extern crate smtlib;
extern crate thiserror;

use asciigraph::Graph;
use clap::Parser;

#[derive(Parser)]
#[command(version, about, long_about = None)]
struct Cli {
    /// input to solvers (leave empty for stdin)
    #[arg(short, long)]
    inputfile: Option<PathBuf>,

    /// output from solvers (leave empty for stdout)
    #[arg(short, long)]
    outputfile: Option<PathBuf>,

    /// one or more solvers to run - each should be specified to take input from stdin
    #[arg(short, long, required = true)]
    solver: Vec<String>,

    /// run solvers incrementally
    #[arg(long, default_value_t = false)]
    incremental: bool,

    /// take output of first solver to finish instead of waiting for all solvers to finish
    #[arg(short, long, default_value_t = false)]
    take_first: bool,

    /// db file to use as cache (leave empty for none)
    #[arg(short, long)]
    cache: Option<String>,
}

pub fn main() {
    let mut g1 = Graph::default();

    g1.set_1d_data(&[1, 2, 3, 1, 1])
        .set_y_range(0, 5)
        .set_pretty_y(1);

    println!("{g1}");
}
