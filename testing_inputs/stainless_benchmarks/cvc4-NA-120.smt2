; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!690 () Bool)

(assert start!690)

(declare-fun a!334 () Int)

(declare-fun b!4530 () Int)

(assert (=> start!690 (and (> a!334 0) (= b!4530 a!334) (<= b!4530 0))))

(assert (=> start!690 true))

(push 1)

(check-sat)

(pop 1)

