extern crate clap;
extern crate colored;
extern crate peg;
extern crate serde;
extern crate smtlib;
extern crate thiserror;

use std::{
    fmt::{Debug, Display},
    ops::Range,
    time::Duration,
};

use chrono::{DateTime, Utc};
use clap::{Parser, Subcommand};
use rusqlite::{params, Connection};
use termplot::{plot::Histogram, Domain, Plot};

#[derive(Parser)]
#[command(version, about, long_about = None)]
struct Cli {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Subcommand)]
enum Commands {
    /// Adds files to myapp
    Stats {
        stats_file: String,
        #[arg(long)]
        hist: bool,
        #[arg(short, long)]
        run_index: Option<i32>,
    },
}

// #[derive(Debug)]
#[allow(dead_code)]
struct RunEntry {
    id: usize,
    run_time: DateTime<Utc>,
    cache_hits: usize,
    cache_misses: usize,
}

impl Display for RunEntry {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "({:>3}) - {:>2}/{:<2} - {:3}",
            self.id,
            self.cache_hits,
            self.cache_misses,
            self.cache_hits + self.cache_misses
        )
    }
}

impl RunEntry {
    fn new(id: usize, run_time: i64, cache_hits: usize, cache_misses: usize) -> Self {
        RunEntry {
            id,
            run_time: DateTime::from_timestamp_micros(run_time).expect("couldnt parse run time"),
            cache_hits,
            cache_misses,
        }
    }
}

#[derive(Debug)]
#[allow(dead_code)]
struct QueryEntry {
    id: usize,
    run_id: usize,
    query: String,
    response: String,
    time_taken: Duration,
}

impl QueryEntry {
    fn new(id: usize, run_id: usize, query: String, response: String, time_taken: u64) -> Self {
        QueryEntry {
            id,
            run_id,
            query,
            response,
            time_taken: Duration::from_nanos(time_taken),
        }
    }
}

#[allow(dead_code)]
fn get_domain_codomain(values: &[f64], count: u32) -> (Domain, Domain) {
    let max = values.iter().copied().fold(f64::NEG_INFINITY, f64::max);
    let min = values.iter().copied().fold(f64::INFINITY, f64::min);
    let width = (max - min) / count as f64;

    let buckets_sizes = (0..count)
        .map(|idx| (min + width * idx as f64)..(min + width * (idx as f64 + 1.0)))
        .collect::<Vec<Range<f64>>>();

    let buckets = buckets_sizes
        .into_iter()
        .map(|range| values.iter().filter(|v| range.contains(v)).count() as f64)
        .collect::<Vec<_>>();

    let y_max = buckets.iter().copied().fold(f64::NEG_INFINITY, f64::max);

    (Domain(0.0..max), Domain(0.0..y_max))
}

fn run_stats(
    stats_file: String,
    _run_index: Option<i32>,
    hist: bool,
) -> Result<(), rusqlite::Error> {
    let conn = Connection::open(stats_file).expect("couldnt open connection to database");
    let mut stmt = conn.prepare("SELECT * FROM runs")?;

    let runs_iter = stmt.query_map([], |row| {
        Ok(RunEntry::new(
            row.get(0)?,
            row.get(1)?,
            row.get(2)?,
            row.get(3)?,
        ))
    })?;

    let mut runs = Vec::new();
    for run in runs_iter {
        runs.push(run?);
    }

    let mut queries = Vec::new();

    for run in runs {
        let mut stmt = conn.prepare("SELECT * FROM queries WHERE run_id = ?1")?;

        println!("{run}");

        let query_iter = stmt.query_map(params![run.id], |r| {
            Ok(QueryEntry::new(
                r.get(0)?,
                r.get(1)?,
                r.get(2)?,
                r.get(3)?,
                r.get(4)?,
            ))
        })?;

        let mut qs = Vec::new();

        for query_result in query_iter {
            qs.push(query_result?);
        }

        queries.push(qs);
    }

    if hist {
        for (run_id, qs) in queries.iter().enumerate() {
            let mut plot = Plot::default();

            let mapped = qs
                .iter()
                .map(|q| q.time_taken.as_micros() as f64 / 1000.0)
                .collect::<Vec<_>>();
            let (domain, codomain) = get_domain_codomain(mapped.as_slice(), 10);

            if domain.max().eq(&0.0) {
                continue;
            }

            println!("run {run_id}");
            println!("{:-<1$}", "", 50);
            println!("{mapped:?}");

            plot.set_domain(domain)
                .set_codomain(codomain)
                .add_plot(Box::new(Histogram::new_with_buckets_count(mapped, 10)));

            println!("{plot}");
        }
    }
    Ok(())
}

pub fn main() -> Result<(), rusqlite::Error> {
    let cli = Cli::parse();

    match cli.command {
        Commands::Stats {
            stats_file,
            run_index,
            hist,
        } => {
            run_stats(stats_file, run_index, hist)?;
        }
    }

    Ok(())
}
