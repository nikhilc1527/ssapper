; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9754 () Bool)

(assert start!9754)

(declare-fun c!17046 () Int)

(declare-fun b!71211 () Int)

(declare-fun a!750 () Int)

(declare-fun a2!26 () Int)

(declare-fun c!17047 () Int)

(declare-fun b!71210 () Int)

(declare-fun a!749 () Int)

(declare-fun a2!25 () Int)

(declare-fun d!53974 () Int)

(assert (=> start!9754 (and (>= a!749 0) (<= a!749 50) (= b!71210 (+ a!749 2)) (= c!17046 (+ a!749 b!71210)) (> a2!25 a!749) (= a!750 a!749) (= a2!26 a2!25) (= d!53974 2) (>= a!750 0) (<= a!750 50) (= b!71211 (+ a!750 2)) (= c!17047 (+ a!750 b!71211)) (> a2!26 a!750) (or (< d!53974 0) (> d!53974 50)))))

(assert (=> start!9754 true))

(push 1)

(check-sat)

(pop 1)

