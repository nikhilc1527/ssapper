use std::{fmt::Display, time::Duration};

use anyhow::anyhow;
use chrono::{DateTime, Utc};
use rusqlite::{params, Connection};

type Result<T> = anyhow::Result<T>;

#[derive(Debug)]
pub struct RunEntry {
    pub id: usize,
    pub run_time: DateTime<Utc>,
    pub cache_hits: usize,
    pub cache_misses: usize,
    pub queries: Vec<QueryEntry>,
}

impl Display for RunEntry {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "({:>2}) - {:>3}/{:>3} - {:>6.2}%",
            self.id,
            self.cache_hits,
            self.cache_misses,
            self.cache_hits as f64 / ((self.cache_hits + self.cache_misses) as f64) * 100.0
        )
    }
}

#[derive(Debug)]
pub struct QueryEntry {
    pub id: usize,
    pub run_id: usize,
    pub query: String,
    pub response: String,
    pub time_taken: Duration,
}

pub fn get_stats(stats_file: &str) -> Result<Vec<RunEntry>> {
    let conn = Connection::open(stats_file).expect("couldnt open connection to database");
    let mut stmt = conn.prepare("SELECT * FROM runs")?;

    let runs_iter = stmt.query_and_then([], |row| {
        let re = RunEntry {
            id: row.get(0)?,
            run_time: DateTime::from_timestamp_micros(row.get(1)?)
                .ok_or(anyhow!("couldnt construct timestamp"))?,
            cache_hits: row.get(2)?,
            cache_misses: row.get(3)?,
            queries: vec![],
        };
        anyhow::Ok(re)
    })?;

    let mut runs = Vec::new();
    for run in runs_iter {
        let mut run = run?;
        let mut stmt = conn.prepare("SELECT * FROM queries WHERE run_id = ?1")?;

        let query_iter = stmt.query_and_then(params![run.id], |row| {
            anyhow::Ok(QueryEntry {
                id: row.get(0)?,
                run_id: row.get(1)?,
                query: row.get(2)?,
                response: row.get(3)?,
                time_taken: Duration::from_nanos(row.get(4)?),
            })
        })?;

        run.queries = query_iter.map(|f| f.unwrap()).collect::<Vec<QueryEntry>>();
        runs.push(run);
    }

    Ok(runs)
}
