use std::{
    fs::File,
    io::{BufRead, BufReader},
    process::Command,
    sync::mpsc::channel,
};

use criterion::{criterion_group, criterion_main, Criterion};
use ssapper::parser;
use temp_env::with_vars;
use tempfile::NamedTempFile;
use tests::run_file;

#[path = "../tests/shared.rs"]
mod tests;

const INFILENAME: &str = "./testing_inputs/stainless_benchmarks/cvc4-NA-1070.smt2";

pub fn criterion_benchmark(crit: &mut Criterion) {
    let mut c = crit.benchmark_group("ssapper_profile");

    c.sample_size(100);

    let cache_file = NamedTempFile::new().expect("couldnt open temp file");
    let cache_file_path = cache_file.path().to_str().unwrap();
    let tmpf = NamedTempFile::new().expect("couldnt make tmp file");
    let tmpfile_path = tmpf.path().to_str().unwrap();

    c.throughput(criterion::Throughput::Bytes(
        File::open(INFILENAME).unwrap().metadata().unwrap().len(),
    ));

    c.sampling_mode(criterion::SamplingMode::Flat);

    c.bench_function("run file with perf", |b| {
        b.iter(|| {
            run_file(
                INFILENAME.to_string(),
                Some(cache_file_path),
                Some(tmpfile_path),
            );
        })
    });

    c.bench_function("run file without perf", |b| {
        b.iter(|| {
            run_file(INFILENAME.to_string(), Some(cache_file_path), None);
        })
    });

    c.bench_function("generate the cache", |b| {
        b.iter(|| {
            let cache_file = NamedTempFile::new().expect("couldnt open temp file");
            let cache_file_path = cache_file.path().to_str().unwrap();

            run_file(INFILENAME.to_string(), Some(cache_file_path), None);
        })
    });

    c.bench_function("run file without cache", |b| {
        b.iter(|| {
            run_file(INFILENAME.to_string(), None, None);
        })
    });

    c.bench_function("just parse", |b| {
        b.iter(|| {
            let (tx, _rx) = channel();
            let mut inlines: Box<dyn BufRead> = Box::new(BufReader::new(
                File::open(INFILENAME).expect("couldnt open infile"),
            ));
            parser(&mut inlines, tx).expect("couldnt parse");
        })
    });

    c.bench_function("run external z3", |b| {
        b.iter(|| {
            Command::new("z3")
                .arg(INFILENAME)
                .output()
                .expect("failed to run the actual z3")
                .stdout
        })
    });

    c.bench_function("run external ssapper", |b| {
        b.iter(|| {
            with_vars(
                vec![
                    ("SSAPPER_CACHE_FILE", Some(cache_file_path)),
                    ("SSAPPER_PERF_FILE", Some(tmpfile_path)),
                ],
                || {
                    Command::new(env!("CARGO_BIN_EXE_ssapper"))
                        .arg(INFILENAME)
                        .output()
                        .expect("failed to run the actual z3")
                        .stdout
                },
            );
        })
    });
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);
