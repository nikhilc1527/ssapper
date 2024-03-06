; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2844 () Bool)

(assert start!2844)

(declare-fun x1!14 () (_ BitVec 8))

(declare-fun x8!1 () (_ BitVec 4))

(declare-fun x7!1 () (_ BitVec 12))

(declare-fun x5!4 () (_ BitVec 4))

(declare-fun x2!16 () (_ BitVec 8))

(declare-fun x6!1 () (_ BitVec 8))

(declare-fun x4!6 () (_ BitVec 12))

(declare-fun x3!8 () (_ BitVec 8))

(assert (=> start!2844 (and (= x1!14 #b10010001) (= x2!16 x1!14) (= x2!16 #b10010001) (= x3!8 x2!16) (= ((_ sign_extend 24) x3!8) #b11111111111111111111111110010001) (= x4!6 ((_ zero_extend 4) x1!14)) (= x4!6 #b000010010001) (= x5!4 ((_ extract 3 0) x1!14)) (= x5!4 #b0001) (= x6!1 #b01111000) (= x7!1 ((_ sign_extend 4) x6!1)) (= x7!1 #b000001111000) (= x8!1 ((_ extract 3 0) x6!1)) (not (= x8!1 #b1000)))))

(assert (=> start!2844 true))

(push 1)

(check-sat)

(pop 1)

