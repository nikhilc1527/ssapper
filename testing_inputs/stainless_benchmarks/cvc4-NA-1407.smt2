; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9760 () Bool)

(assert start!9760)

(declare-fun c!17046 () Int)

(declare-fun x!28353 () Int)

(declare-fun b!71210 () Int)

(declare-fun a!749 () Int)

(declare-fun a2!25 () Int)

(assert (=> start!9760 (and (>= a!749 0) (<= a!749 50) (= b!71210 (+ a!749 2)) (= c!17046 (+ a!749 b!71210)) (<= a2!25 a!749) (= x!28353 5) (<= x!28353 0))))

(assert (=> start!9760 true))

(push 1)

(check-sat)

(pop 1)

