use std::{
    fmt::Display,
    time::{Duration, Instant},
};

use chrono::{DateTime, Utc};
use rusqlite::{params, Connection};

#[derive(Debug)]
pub struct RunEntry {
    pub id: usize,
    pub run_time: DateTime<Utc>,
    pub cache_hits: usize,
    pub cache_misses: usize,
    pub queries: Vec<QueryEntry>,
}

impl RunEntry {
    fn new(
        id: usize,
        run_time: i64,
        cache_hits: usize,
        cache_misses: usize,
        queries: Vec<QueryEntry>,
    ) -> Self {
        RunEntry {
            id,
            run_time: DateTime::from_timestamp_micros(run_time).expect("couldnt parse run time"),
            cache_hits,
            cache_misses,
            queries,
        }
    }
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

pub fn get_stats(stats_file: String) -> Result<Vec<RunEntry>, rusqlite::Error> {
    let conn = Connection::open(stats_file).expect("couldnt open connection to database");
    let mut stmt = conn.prepare("SELECT * FROM runs")?;

    let runs_iter = stmt.query_map([], |row| {
        Ok(RunEntry::new(
            row.get(0)?,
            row.get(1)?,
            row.get(2)?,
            row.get(3)?,
            vec![],
        ))
    })?;

    let mut runs = Vec::new();
    for run in runs_iter {
        let mut run = run?;
        let mut stmt = conn.prepare("SELECT * FROM queries WHERE run_id = ?1")?;
        let query_iter = stmt.query_map(params![run.id], |r| {
            Ok(QueryEntry::new(
                r.get(0)?,
                r.get(1)?,
                r.get(2)?,
                r.get(3)?,
                r.get(4)?,
            ))
        })?;
        run.queries = query_iter.map(|f| f.unwrap()).collect::<Vec<QueryEntry>>();
        runs.push(run);
    }

    Ok(runs)
}
