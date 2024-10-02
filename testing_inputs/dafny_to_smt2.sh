#!/bin/sh

bname=$(basename "$1")
dafny verify --solver-log ./smt2/"$bname".smt2 --boogie /normalizeNames:0 "$1"
