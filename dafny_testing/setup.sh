#!/bin/sh

export SSAPPER_CACHE_FILE=./cache
export SSAPPER_PERF_FILE=./perf
# export SSAPPER_SOLVER_PATH=/tmp/z3-4.13.3-x64-glibc-2.35/bin/z3

alias ssapper="cargo run --bin=ssapper --"
alias perfs="cargo run --bin=ssapper-tool -- stats --summary $SSAPPER_PERF_FILE"
