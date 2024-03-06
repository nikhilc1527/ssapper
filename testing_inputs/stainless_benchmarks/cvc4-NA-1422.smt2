; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9802 () Bool)

(assert start!9802)

(declare-fun a!780 () Int)

(declare-fun b!71265 () Int)

(declare-fun c!17058 () Int)

(declare-fun x$1!969 () Int)

(assert (=> start!9802 (and (> a!780 0) (< a!780 b!71265) (> c!17058 0) (= x$1!969 (+ c!17058 b!71265)) (<= x$1!969 0))))

(assert (=> start!9802 true))

(push 1)

(check-sat)

(pop 1)

