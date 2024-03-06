; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2874 () Bool)

(assert start!2874)

(declare-fun res!5191 () Bool)

(declare-fun e!7527 () Bool)

(assert (=> start!2874 (=> (not res!5191) (not e!7527))))

(declare-fun res!5162 () (_ BitVec 32))

(declare-fun n!244 () (_ BitVec 32))

(declare-fun x!7772 () (_ BitVec 32))

(assert (=> start!2874 (= res!5191 (and (bvsge n!244 #b00000000000000000000000000000000) (bvslt n!244 #b00000000000000000000000000100000) (= res!5162 (bvor x!7772 (bvshl #b00000000000000000000000000000001 n!244)))))))

(assert (=> start!2874 e!7527))

(assert (=> start!2874 true))

(declare-fun b!13611 () Bool)

(declare-fun isBitNSet!1 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!13611 (= e!7527 (= (isBitNSet!1 res!5162 n!244) #b00000000000000000000000000000000))))

(assert (= (and start!2874 res!5191) b!13611))

(declare-fun m!17377 () Bool)

(assert (=> b!13611 m!17377))

(push 1)

(assert (not b!13611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10404 () Bool)

(assert (=> d!10404 (= (isBitNSet!1 res!5162 n!244) (bvand res!5162 (bvshl #b00000000000000000000000000000001 n!244)))))

(assert (=> b!13611 d!10404))

(push 1)

(check-sat)

(pop 1)

