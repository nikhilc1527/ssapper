; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9772 () Bool)

(assert start!9772)

(declare-fun a!761 () Int)

(declare-fun a!762 () Int)

(declare-fun b!71231 () Int)

(assert (=> start!9772 (and (>= a!761 0) (= a!762 a!761) (= b!71231 2) (>= a!762 0) (<= b!71231 0))))

(assert (=> start!9772 true))

(push 1)

(check-sat)

(pop 1)

