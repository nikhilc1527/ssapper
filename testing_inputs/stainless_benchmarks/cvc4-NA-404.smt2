; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2824 () Bool)

(assert start!2824)

(declare-fun x!7744 () (_ BitVec 42))

(assert (=> start!2824 (not (= x!7744 x!7744))))

(assert (=> start!2824 true))

(push 1)

(check-sat)

(pop 1)

