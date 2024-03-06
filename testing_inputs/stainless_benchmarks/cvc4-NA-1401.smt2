; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9742 () Bool)

(assert start!9742)

(declare-fun b!71188 () Int)

(declare-fun a!737 () Int)

(declare-fun a!738 () Int)

(declare-fun c!17035 () Int)

(declare-fun b!71189 () Int)

(assert (=> start!9742 (and (>= a!737 0) (= b!71188 (+ a!737 2)) (= a!738 a!737) (= c!17035 2) (>= a!738 0) (= b!71189 (+ a!738 2)) (< c!17035 0))))

(assert (=> start!9742 true))

(push 1)

(check-sat)

(pop 1)

