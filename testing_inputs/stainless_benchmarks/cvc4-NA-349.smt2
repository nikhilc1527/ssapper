; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2664 () Bool)

(assert start!2664)

(declare-fun d!10192 () Real)

(assert (=> start!2664 (and (= d!10192 (/ 2 1)) (= d!10192 (/ 0 1)))))

(assert (=> start!2664 true))

(push 1)

(check-sat)

(pop 1)

