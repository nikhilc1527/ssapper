; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2836 () Bool)

(assert start!2836)

(declare-fun x1!14 () (_ BitVec 8))

(declare-fun x2!16 () (_ BitVec 8))

(declare-fun x3!8 () (_ BitVec 8))

(assert (=> start!2836 (and (= x1!14 #b10010001) (= x2!16 x1!14) (= x2!16 #b10010001) (= x3!8 x2!16) (not (= ((_ sign_extend 24) x3!8) #b11111111111111111111111110010001)))))

(assert (=> start!2836 true))

(push 1)

(check-sat)

(pop 1)

