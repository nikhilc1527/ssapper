; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9800 () Bool)

(assert start!9800)

(declare-fun a!777 () Int)

(declare-fun b!71262 () Int)

(declare-fun b!71263 () Int)

(declare-fun a!778 () Int)

(declare-fun c!17056 () Int)

(assert (=> start!9800 (and (> a!777 0) (< a!777 b!71262) (= a!778 a!777) (= b!71263 b!71262) (= c!17056 2) (> a!778 0) (< a!778 b!71263) (<= c!17056 0))))

(assert (=> start!9800 true))

(push 1)

(check-sat)

(pop 1)

