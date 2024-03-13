#!/bin/sh

set -xe

cargo build
cargo run -- -s z3\ -in < ./testing_inputs/handmade/in1
cargo run -- -s z3\ -in < ./testing_inputs/handmade/in2
cargo run -- -s z3\ -in < ./testing_inputs/handmade/in3

# '!' is not handled by parser
# cargo run -- -s z3\ -in < ./testing_inputs/handmade/in4
