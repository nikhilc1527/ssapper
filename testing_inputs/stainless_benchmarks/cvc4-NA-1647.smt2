; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11460 () Bool)

(assert start!11460)

(declare-fun b!87770 () (_ BitVec 16))

(declare-fun x!30618 () (_ BitVec 32))

(assert (=> start!11460 (and (bvsge ((_ sign_extend 16) b!87770) #b11111111111111111000000000000000) (bvsle ((_ sign_extend 16) b!87770) #b00000000000000000111111111111111) (= x!30618 ((_ sign_extend 16) b!87770)) (bvsge x!30618 #b00000000000000001000000000000000))))

(assert (=> start!11460 true))

(push 1)

(check-sat)

(pop 1)

