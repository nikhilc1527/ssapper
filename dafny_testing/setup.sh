#!/bin/sh

export SSAPPER_CACHE_FILE=./cache
export SSAPPER_PERF_FILE=./perf

alias ssapper="cargo run --bin=ssapper --"
alias perfer="cargo run --bin=ssapper-tool -- stats $SSAPPER_PERF_FILE"

function run_dafny() {
    cargo build --release && time ./dafny verify --solver-path=../target/release/ssapper $1
}
