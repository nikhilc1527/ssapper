; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2962 () Bool)

(assert start!2962)

(declare-fun b!14025 () (_ BitVec 8))

(declare-fun b!14026 () (_ BitVec 8))

(assert (=> start!2962 (and (= b!14025 #b01111111) (= b!14026 b!14025) (= (bvsrem ((_ sign_extend 24) b!14026) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(assert (=> start!2962 true))

(push 1)

(check-sat)

(pop 1)

