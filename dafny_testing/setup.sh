#!/bin/sh

export SSAPPER_CACHE_FILE=./cache
export SSAPPER_PERF_FILE=./perf

alias ssapper="cargo run --bin=ssapper --"
alias perfs="cargo run --bin=ssapper-tool -- stats --summary $SSAPPER_PERF_FILE"

function run_dafny() {
    ./dafny /p:PROVER_PATH=../target/release/ssapper /randomSeed:1234 /compile:0 $1
}
