#!/bin/sh

set -x

dafny verify --disable-nonlinear-arithmetic --verification-time-limit 20 daisy-nfsd/src/util/marshal.i.dfy
dafny verify --solver-path /usr/bin/z3 --disable-nonlinear-arithmetic --verification-time-limit 20 daisy-nfsd/src/util/marshal.i.dfy
