; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!684 () Bool)

(assert start!684)

(declare-fun a!334 () Int)

(declare-fun b!4530 () Int)

(declare-fun a!335 () Int)

(assert (=> start!684 (and (> a!334 0) (= b!4530 a!334) (> b!4530 0) (= a!335 1) (<= a!335 0))))

(assert (=> start!684 true))

(push 1)

(check-sat)

(pop 1)

