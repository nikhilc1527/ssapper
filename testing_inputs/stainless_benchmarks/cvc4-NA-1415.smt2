; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9782 () Bool)

(assert start!9782)

(declare-fun a!767 () Int)

(declare-fun b!71249 () Int)

(declare-fun x!28406 () Int)

(assert (=> start!9782 (and (>= a!767 0) (= b!71249 (+ a!767 2)) (= x!28406 a!767) (< x!28406 0))))

(assert (=> start!9782 true))

(push 1)

(check-sat)

(pop 1)

