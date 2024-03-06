#!/bin/sh

set -xe

cargo build
cargo run -- -s z3\ -in < ./testing_inputs/handmade/in4
