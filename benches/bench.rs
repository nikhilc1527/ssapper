use std::process::Command;

use criterion::{criterion_group, criterion_main, Criterion};
use temp_env::with_vars;
use tempfile::NamedTempFile;
use tests::run_file;

#[path = "../tests/shared.rs"]
mod tests;

pub fn criterion_benchmark(crit: &mut Criterion) {
    let mut c = crit.benchmark_group("ssapper_profile");

    c.sample_size(20);

    let cache_file = NamedTempFile::new().expect("couldnt open temp file");
    let cache_file_path = cache_file.path().to_str().unwrap();
    let tmpf = NamedTempFile::new().expect("couldnt make tmp file");
    let path = tmpf.keep().expect("couldnt keep");
    let tmpfile_path = path.1.to_str().expect("couldnt make string");

    c.throughput(criterion::Throughput::Bytes(
        include_bytes!("../testing_inputs/stainless_benchmarks/cvc4-NA-730.smt2").len() as u64,
    ));

    c.sampling_mode(criterion::SamplingMode::Flat);

    c.bench_function("run file with perf", |b| {
        b.iter(|| {
            run_file(
                "./testing_inputs/stainless_benchmarks/cvc4-NA-730.smt2".to_string(),
                Some(cache_file_path),
                Some(tmpfile_path),
            );
        })
    });

    c.bench_function("run file without perf", |b| {
        b.iter(|| {
            run_file(
                "./testing_inputs/stainless_benchmarks/cvc4-NA-730.smt2".to_string(),
                Some(cache_file_path),
                None,
            );
        })
    });

    c.bench_function("run file without cache", |b| {
        b.iter(|| {
            run_file(
                "./testing_inputs/stainless_benchmarks/cvc4-NA-730.smt2".to_string(),
                None,
                None,
            );
        })
    });

    c.bench_function("run external z3", |b| {
        b.iter(|| {
            Command::new("z3")
                .arg("./testing_inputs/stainless_benchmarks/cvc4-NA-730.smt2")
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
                        .arg("./testing_inputs/stainless_benchmarks/cvc4-NA-730.smt2")
                        .output()
                        .expect("failed to run the actual z3")
                        .stdout
                },
            );
        })
    });

    // let mut group1 = c.benchmark_group("run cache/perf");
    // for infile in INFILES {
    //     group1.bench_with_input(
    //         BenchmarkId::from_parameter(infile),
    //         infile,
    //         |bencher, infile| {
    //             bencher.iter(|| {
    //                 run_file(
    //                     infile.to_string(),
    //                     Some(cache_file_path),
    //                     Some(tmpfile_path),
    //                 );
    //             });
    //         },
    //     );
    // }
    // group1.finish();
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);
