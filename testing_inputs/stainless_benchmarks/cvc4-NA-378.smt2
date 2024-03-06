; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2772 () Bool)

(assert start!2772)

(declare-fun n!225 () (_ BitVec 10))

(assert (=> start!2772 (not (= (bvxor n!225 n!225) #b0000000000))))

(assert (=> start!2772 true))

(push 1)

(check-sat)

(pop 1)

