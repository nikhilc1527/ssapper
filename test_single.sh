#!/bin/sh

f="$1"
outname=out/$(basename "$f")
output=$(./target/debug/ssapper -s z3\ -in -i "$f" -o "$outname"_1)
[ "$?" -eq 0 ] || exit 1
cat "$f" | z3 -in > "$outname"_2
diff=$(diff -u "$outname"_1 "$outname"_2 | wc -l)
inputlines=$(cat "$f" | wc -l)
# diff -u "$outname"_1 "$outname"_2
if [ "$diff" -ge "1" ]; then
    printf "%d : %s : %d\n" "$inputlines" "$f" "$diff"
    # cat "$f" | wc -l
fi
