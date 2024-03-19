#!/bin/sh

cargo build || exit $?

# ./target/debug/ssapper -s z3\ -in z3\ -in z3\ -in -- -i ./testing_inputs/handmade/in1 -o out/out1
# ./target/debug/ssapper -s z3\ -in z3\ -in z3\ -in -- -i ./testing_inputs/handmade/in2 -o out/out2
# ./target/debug/ssapper -s z3\ -in z3\ -in z3\ -in -- -i ./testing_inputs/handmade/in3 -o out/out3
# ./target/debug/ssapper -s z3\ -in z3\ -in z3\ -in -- -i ./testing_inputs/handmade/in3 -o out/out4

for f in testing_inputs/stainless_benchmarks/*;
do
    ./target/debug/ssapper -s z3\ -in z3\ -in z3\ -in -- -i "$f" -o out/$(basename "$f")
done

# for f in $(find ./testing_inputs/QF_NIA/ -type f -name "*.smt2");
# do
#     ./target/debug/ssapper -s z3\ -in z3\ -in z3\ -in -- -i "$f" -o out/$(basename "$f")
# done
