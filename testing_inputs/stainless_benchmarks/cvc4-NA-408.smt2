; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2832 () Bool)

(assert start!2832)

(declare-fun x!7746 () (_ BitVec 8))

(assert (=> start!2832 (and (= x!7746 #b11111111) (not (= x!7746 #b11111111)))))

(assert (=> start!2832 true))

(push 1)

(check-sat)

(pop 1)

