; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2864 () Bool)

(assert start!2864)

(declare-fun res!5187 () Bool)

(declare-fun e!7524 () Bool)

(assert (=> start!2864 (=> (not res!5187) (not e!7524))))

(declare-fun res!5161 () (_ BitVec 32))

(declare-fun n!236 () (_ BitVec 32))

(declare-fun x!7764 () (_ BitVec 32))

(assert (=> start!2864 (= res!5187 (and (bvsge n!236 #b00000000000000000000000000000000) (bvslt n!236 #b00000000000000000000000000100000) (= res!5161 (bvxor x!7764 (bvshl #b00000000000000000000000000000001 n!236)))))))

(assert (=> start!2864 e!7524))

(assert (=> start!2864 true))

(declare-fun b!13607 () Bool)

(declare-fun res!5188 () Bool)

(assert (=> b!13607 (=> (not res!5188) (not e!7524))))

(declare-fun isBitNSet!1 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!13607 (= res!5188 (= (isBitNSet!1 x!7764 n!236) #b00000000000000000000000000000000))))

(declare-fun b!13608 () Bool)

(assert (=> b!13608 (= e!7524 (= (isBitNSet!1 res!5161 n!236) #b00000000000000000000000000000000))))

(assert (= (and start!2864 res!5187) b!13607))

(assert (= (and b!13607 res!5188) b!13608))

(declare-fun m!17373 () Bool)

(assert (=> b!13607 m!17373))

(declare-fun m!17375 () Bool)

(assert (=> b!13608 m!17375))

(push 1)

(assert (not b!13608))

(assert (not b!13607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10400 () Bool)

(assert (=> d!10400 (= (isBitNSet!1 res!5161 n!236) (bvand res!5161 (bvshl #b00000000000000000000000000000001 n!236)))))

(assert (=> b!13608 d!10400))

(declare-fun d!10402 () Bool)

(assert (=> d!10402 (= (isBitNSet!1 x!7764 n!236) (bvand x!7764 (bvshl #b00000000000000000000000000000001 n!236)))))

(assert (=> b!13607 d!10402))

(push 1)

(check-sat)

(pop 1)

