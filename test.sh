#!/bin/sh

set -xe

cargo build

./target/debug/smtprof -s z3\ -in z3\ -in z3\ -in < ./testing_inputs/handmade/in1
./target/debug/smtprof -s z3\ -in z3\ -in z3\ -in < ./testing_inputs/handmade/in2
./target/debug/smtprof -s z3\ -in z3\ -in z3\ -in < ./testing_inputs/handmade/in3

# '!' is not handled by parser
# cargo run -- -s z3\ -in < ./testing_inputs/handmade/in4

# for f in testing_inputs/stainless_benchmarks/*;
# do
#     ./target/debug/smtprof -s z3\ -in z3\ -in z3\ -in < $f
# done
