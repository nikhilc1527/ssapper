; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2860 () Bool)

(assert start!2860)

(declare-fun res!5181 () Bool)

(declare-fun e!7521 () Bool)

(assert (=> start!2860 (=> (not res!5181) (not e!7521))))

(declare-fun res!5161 () (_ BitVec 32))

(declare-fun n!236 () (_ BitVec 32))

(declare-fun x!7764 () (_ BitVec 32))

(assert (=> start!2860 (= res!5181 (and (bvsge n!236 #b00000000000000000000000000000000) (bvslt n!236 #b00000000000000000000000000100000) (= res!5161 (bvxor x!7764 (bvshl #b00000000000000000000000000000001 n!236)))))))

(assert (=> start!2860 e!7521))

(assert (=> start!2860 true))

(declare-fun b!13601 () Bool)

(declare-fun res!5182 () Bool)

(assert (=> b!13601 (=> (not res!5182) (not e!7521))))

(declare-fun isBitNSet!1 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!13601 (= res!5182 (not (= (isBitNSet!1 x!7764 n!236) #b00000000000000000000000000000000)))))

(declare-fun b!13602 () Bool)

(assert (=> b!13602 (= e!7521 (not (= (isBitNSet!1 res!5161 n!236) #b00000000000000000000000000000000)))))

(assert (= (and start!2860 res!5181) b!13601))

(assert (= (and b!13601 res!5182) b!13602))

(declare-fun m!17369 () Bool)

(assert (=> b!13601 m!17369))

(declare-fun m!17371 () Bool)

(assert (=> b!13602 m!17371))

(push 1)

(assert (not b!13601))

(assert (not b!13602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10396 () Bool)

(assert (=> d!10396 (= (isBitNSet!1 x!7764 n!236) (bvand x!7764 (bvshl #b00000000000000000000000000000001 n!236)))))

(assert (=> b!13601 d!10396))

(declare-fun d!10398 () Bool)

(assert (=> d!10398 (= (isBitNSet!1 res!5161 n!236) (bvand res!5161 (bvshl #b00000000000000000000000000000001 n!236)))))

(assert (=> b!13602 d!10398))

(push 1)

(check-sat)

(pop 1)

