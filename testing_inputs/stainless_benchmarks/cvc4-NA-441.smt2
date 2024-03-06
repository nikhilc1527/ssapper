; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2920 () Bool)

(assert start!2920)

(declare-fun res!5264 () Bool)

(declare-fun e!7722 () Bool)

(assert (=> start!2920 (=> (not res!5264) (not e!7722))))

(declare-fun i!220 () (_ BitVec 32))

(declare-fun n!262 () (_ BitVec 32))

(assert (=> start!2920 (= res!5264 (and (bvsle #b00000000000000000000000000000000 i!220) (bvslt i!220 #b00000000000000000000000000100000) (bvsle #b00000000000000000000000000000000 n!262) (bvslt n!262 #b00000000000000000000000000100000)))))

(assert (=> start!2920 e!7722))

(assert (=> start!2920 true))

(declare-fun b!13953 () Bool)

(declare-fun res!5265 () Bool)

(assert (=> b!13953 (=> (not res!5265) (not e!7722))))

(declare-fun y!691 () (_ BitVec 32))

(declare-fun isOk!1 () Bool)

(declare-fun x!7811 () (_ BitVec 32))

(declare-fun bitAt!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!13953 (= res!5265 (= isOk!1 (= (bitAt!0 x!7811 i!220) (bitAt!0 y!691 (bvsrem (bvadd i!220 n!262) #b00000000000000000000000000100000)))))))

(declare-fun y!692 () (_ BitVec 32))

(declare-fun b!13954 () Bool)

(declare-fun x!7816 () (_ BitVec 32))

(declare-fun i!221 () (_ BitVec 32))

(declare-fun n!268 () (_ BitVec 32))

(assert (=> b!13954 (= e!7722 (and (not (= i!220 #b00000000000000000000000000000000)) isOk!1 (= x!7816 x!7811) (= y!692 y!691) (= n!268 n!262) (= i!221 (bvsub i!220 #b00000000000000000000000000000001)) (or (bvsgt #b00000000000000000000000000000000 i!221) (bvsge i!221 #b00000000000000000000000000100000) (bvsgt #b00000000000000000000000000000000 n!268) (bvsge n!268 #b00000000000000000000000000100000))))))

(assert (= (and start!2920 res!5264) b!13953))

(assert (= (and b!13953 res!5265) b!13954))

(declare-fun m!17917 () Bool)

(assert (=> b!13953 m!17917))

(declare-fun m!17919 () Bool)

(assert (=> b!13953 m!17919))

(push 1)

(assert (not b!13953))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

