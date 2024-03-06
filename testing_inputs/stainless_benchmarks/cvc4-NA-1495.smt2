; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10168 () Bool)

(assert start!10168)

(declare-fun i!574 () Int)

(declare-fun i!575 () Int)

(assert (=> start!10168 (and (not (= i!574 0)) (> i!574 0) (= i!575 (- i!574 1)) (< i!575 0))))

(assert (=> start!10168 true))

(push 1)

(check-sat)

(pop 1)

