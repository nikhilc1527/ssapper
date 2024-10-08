#!/usr/bin/env sh

export SSAPPER_CACHE_FILE=/tmp/bla

cargo build --release || exit $?
rm out/*

# ./target/debug/ssapper -s z3\ -in -- -i ./testing_inputs/handmade/in1 -o out/out1
# ./target/debug/ssapper -s z3\ -in -- -i ./testing_inputs/handmade/in2 -o out/out2
# ./target/debug/ssapper -s z3\ -in -- -i ./testing_inputs/handmade/in3 -o out/out3
# ./target/debug/ssapper -s z3\ -in -- -i ./testing_inputs/handmade/in3 -o out/out4

# stainless 635 min error diff
find testing_inputs/stainless_benchmarks/ -type f | parallel ./test_single.sh 
# find testing_inputs/stainless_benchmarks/ -exec ./test_single.sh {} \;

# for f in $(find ./testing_inputs/QF_NIA/ -type f -name "*.smt2");
# do
#     ./target/debug/ssapper -s z3\ -in z3\ -in z3\ -in -- -i "$f" -o out/$(basename "$f")
# done
