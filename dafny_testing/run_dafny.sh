#!/bin/sh

./dafny /compile:0 /p:PROVER_PATH=../target/release/ssapper /p:randomSeed=1234 /proverLog:log.txt $1
