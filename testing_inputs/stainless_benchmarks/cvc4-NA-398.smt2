; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2812 () Bool)

(assert start!2812)

(declare-fun n!233 () (_ BitVec 200))

(assert (=> start!2812 (not (= (bvor n!233 n!233) n!233))))

(assert (=> start!2812 true))

(push 1)

(check-sat)

(pop 1)

