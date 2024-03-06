; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15588 () Bool)

(assert start!15588)

(declare-fun d!63226 () Real)

(assert (=> start!15588 (= d!63226 (/ 0 1))))

(assert (=> start!15588 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

