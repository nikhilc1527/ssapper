; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11458 () Bool)

(assert start!11458)

(declare-fun res!45813 () (_ BitVec 32))

(declare-fun b!87771 () (_ BitVec 16))

(declare-fun c!21716 () (_ BitVec 16))

(assert (=> start!11458 (and (= res!45813 (bvadd ((_ sign_extend 16) b!87771) ((_ sign_extend 16) c!21716))) (or (bvsgt #b11111111111111110000000000000000 res!45813) (bvsgt res!45813 #b00000000000000001111111111111110)))))

(assert (=> start!11458 true))

(push 1)

(check-sat)

(pop 1)

