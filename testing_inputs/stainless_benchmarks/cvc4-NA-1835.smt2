; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12420 () Bool)

(assert start!12420)

(declare-fun y!194 () Int)

(assert (=> start!12420 (= (+ y!194 2) y!194)))

(assert (=> start!12420 true))

(push 1)

(check-sat)

(pop 1)

