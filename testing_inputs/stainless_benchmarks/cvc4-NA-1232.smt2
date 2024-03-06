; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8762 () Bool)

(assert start!8762)

(declare-fun i!472 () Int)

(declare-fun x$3!157 () Int)

(assert (=> start!8762 (and (>= i!472 0) (= x$3!157 i!472) (< x$3!157 0))))

(assert (=> start!8762 true))

(push 1)

(check-sat)

(pop 1)

