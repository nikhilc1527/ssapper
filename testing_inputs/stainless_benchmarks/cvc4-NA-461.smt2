; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2986 () Bool)

(assert start!2986)

(declare-fun i!234 () Int)

(declare-fun i!235 () Int)

(assert (=> start!2986 (and (>= i!234 0) (not (= i!234 0)) (= i!235 i!234) (< i!235 0))))

(assert (=> start!2986 true))

(push 1)

(check-sat)

(pop 1)

