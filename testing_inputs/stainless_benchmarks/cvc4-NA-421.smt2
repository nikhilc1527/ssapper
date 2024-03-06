; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2858 () Bool)

(assert start!2858)

(declare-fun res!5175 () Bool)

(declare-fun e!7518 () Bool)

(assert (=> start!2858 (=> (not res!5175) (not e!7518))))

(declare-fun res!5161 () (_ BitVec 32))

(declare-fun n!236 () (_ BitVec 32))

(declare-fun x!7764 () (_ BitVec 32))

(assert (=> start!2858 (= res!5175 (and (bvsge n!236 #b00000000000000000000000000000000) (bvslt n!236 #b00000000000000000000000000100000) (= res!5161 (bvxor x!7764 (bvshl #b00000000000000000000000000000001 n!236)))))))

(assert (=> start!2858 e!7518))

(assert (=> start!2858 true))

(declare-fun b!13595 () Bool)

(declare-fun res!5176 () Bool)

(assert (=> b!13595 (=> (not res!5176) (not e!7518))))

(declare-fun isBitNSet!1 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!13595 (= res!5176 (= (isBitNSet!1 x!7764 n!236) #b00000000000000000000000000000000))))

(declare-fun x!7769 () (_ BitVec 32))

(declare-fun b!13596 () Bool)

(declare-fun n!241 () (_ BitVec 32))

(assert (=> b!13596 (= e!7518 (and (= x!7769 res!5161) (= n!241 n!236) (or (bvslt n!241 #b00000000000000000000000000000000) (bvsge n!241 #b00000000000000000000000000100000))))))

(assert (= (and start!2858 res!5175) b!13595))

(assert (= (and b!13595 res!5176) b!13596))

(declare-fun m!17367 () Bool)

(assert (=> b!13595 m!17367))

(push 1)

(assert (not b!13595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

