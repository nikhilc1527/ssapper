; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9792 () Bool)

(assert start!9792)

(declare-fun x!28411 () Int)

(declare-fun a!770 () Int)

(declare-fun b!71248 () Int)

(declare-fun c!17052 () Int)

(assert (=> start!9792 (and (>= a!770 0) (= b!71248 (+ a!770 2)) (>= c!17052 0) (= x!28411 b!71248) (< x!28411 0))))

(assert (=> start!9792 true))

(push 1)

(check-sat)

(pop 1)

