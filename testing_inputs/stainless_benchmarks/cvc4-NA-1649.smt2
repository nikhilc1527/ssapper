; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11464 () Bool)

(assert start!11464)

(declare-fun b!87767 () (_ BitVec 16))

(declare-fun b!87768 () (_ BitVec 16))

(assert (=> start!11464 (and (= b!87767 #b0111111111111111) (= b!87768 b!87767) (= (bvsrem ((_ sign_extend 16) b!87768) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(assert (=> start!11464 true))

(push 1)

(check-sat)

(pop 1)

