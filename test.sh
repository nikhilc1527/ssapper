#!/usr/bin/env sh

cargo build || exit $?

# ./target/debug/ssapper -s z3\ -in -- -i ./testing_inputs/handmade/in1 -o out/out1
# ./target/debug/ssapper -s z3\ -in -- -i ./testing_inputs/handmade/in2 -o out/out2
# ./target/debug/ssapper -s z3\ -in -- -i ./testing_inputs/handmade/in3 -o out/out3
# ./target/debug/ssapper -s z3\ -in -- -i ./testing_inputs/handmade/in3 -o out/out4

for f in $(ls testing_inputs/stainless_benchmarks/*);
do
    outname=out/$(basename "$f")
    output=$(./target/debug/ssapper -s z3\ -in -- -i "$f" -o "$outname"_1)
    cat "$f" | z3 -in > "$outname"_2
    diff=$(diff -u "$outname"_1 "$outname"_2 | wc -l)
    # diff -u "$outname"_1 "$outname"_2
    if [ "$diff" -ge "1" ]; then
	printf "%s: %d\n" "$f" "$diff"
    	# cat "$f" | wc -l
    fi
done

# for f in $(find ./testing_inputs/QF_NIA/ -type f -name "*.smt2");
# do
#     ./target/debug/ssapper -s z3\ -in z3\ -in z3\ -in -- -i "$f" -o out/$(basename "$f")
# done
