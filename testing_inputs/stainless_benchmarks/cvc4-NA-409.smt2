; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2834 () Bool)

(assert start!2834)

(declare-fun x1!14 () (_ BitVec 8))

(declare-fun x2!16 () (_ BitVec 8))

(assert (=> start!2834 (and (= x1!14 #b10010001) (= x2!16 x1!14) (not (= x2!16 #b10010001)))))

(assert (=> start!2834 true))

(push 1)

(check-sat)

(pop 1)

