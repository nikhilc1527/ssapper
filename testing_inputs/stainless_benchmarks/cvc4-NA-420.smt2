; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2856 () Bool)

(assert start!2856)

(declare-fun res!5169 () Bool)

(declare-fun e!7515 () Bool)

(assert (=> start!2856 (=> (not res!5169) (not e!7515))))

(declare-fun res!5161 () (_ BitVec 32))

(declare-fun n!236 () (_ BitVec 32))

(declare-fun x!7764 () (_ BitVec 32))

(assert (=> start!2856 (= res!5169 (and (bvsge n!236 #b00000000000000000000000000000000) (bvslt n!236 #b00000000000000000000000000100000) (= res!5161 (bvxor x!7764 (bvshl #b00000000000000000000000000000001 n!236)))))))

(assert (=> start!2856 e!7515))

(assert (=> start!2856 true))

(declare-fun b!13589 () Bool)

(declare-fun res!5170 () Bool)

(assert (=> b!13589 (=> (not res!5170) (not e!7515))))

(declare-fun isBitNSet!1 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!13589 (= res!5170 (not (= (isBitNSet!1 x!7764 n!236) #b00000000000000000000000000000000)))))

(declare-fun b!13590 () Bool)

(declare-fun x!7767 () (_ BitVec 32))

(declare-fun n!239 () (_ BitVec 32))

(assert (=> b!13590 (= e!7515 (and (= x!7767 res!5161) (= n!239 n!236) (or (bvslt n!239 #b00000000000000000000000000000000) (bvsge n!239 #b00000000000000000000000000100000))))))

(assert (= (and start!2856 res!5169) b!13589))

(assert (= (and b!13589 res!5170) b!13590))

(declare-fun m!17365 () Bool)

(assert (=> b!13589 m!17365))

(push 1)

(assert (not b!13589))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

