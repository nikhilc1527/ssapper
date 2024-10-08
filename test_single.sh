#!/bin/sh

# set -xe

f="$1"
# echo "testing file $f"
outname=out/$(basename "$f")
# output=$(cat "$f" | ./target/release/ssapper -in | grep -v error > "$outname"_1)
# [ "$?" -eq 0 ] || exit 1
cat "$f" | z3 -in | grep -v error > "$outname"_2
# diff=$(diff -u "$outname"_1 "$outname"_2 | wc -l)
# inputlines=$(cat "$f" | wc -l)
# # diff -u "$outname"_1 "$outname"_2
# if [ "$diff" -ge "1" ]; then
#     printf "%d : %s : %d\n" "$inputlines" "$f" "$diff"
#     # cat "$f" | wc -l
# fi
