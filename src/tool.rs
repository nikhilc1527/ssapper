use std::ops::Range;

use clap::{Parser, Subcommand};
use ssapper::logging::{get_stats, RunEntry};
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
        #[arg(long)]
        summary: bool,
        #[arg(short, long)]
        run_index: Option<i32>,
    },
}

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

fn print_summary(runs: &Vec<RunEntry>) {
    for run in runs {
        println!("{run}");
    }
}

fn print_histograms(stats: &Vec<RunEntry>, _run_index: Option<i32>) {
    for run in stats {
        let mut plot = Plot::default();

        let mapped = run
            .queries
            .iter()
            .map(|q| q.time_taken.as_micros() as f64 / 1000.0)
            .collect::<Vec<_>>();
        let (domain, codomain) = get_domain_codomain(mapped.as_slice(), 10);

        if domain.max().eq(&0.0) {
            continue;
        }

        println!("run {}", run.id);
        println!("{:-<1$}", "", 50);
        println!("{mapped:?}");

        plot.set_domain(domain)
            .set_codomain(codomain)
            .add_plot(Box::new(Histogram::new_with_buckets_count(mapped, 10)));

        println!("{plot}");
    }
}

pub fn main() -> Result<(), rusqlite::Error> {
    let cli = Cli::parse();

    match cli.command {
        Commands::Stats {
            stats_file,
            run_index,
            hist,
            summary,
        } => {
            let stats = get_stats(&stats_file)?;
            if summary {
                print_summary(&stats);
            }
            if hist {
                print_histograms(&stats, run_index);
            }
        }
    }

    Ok(())
}
