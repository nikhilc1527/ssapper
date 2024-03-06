; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2908 () Bool)

(assert start!2908)

(declare-fun res!5249 () Bool)

(declare-fun e!7713 () Bool)

(assert (=> start!2908 (=> (not res!5249) (not e!7713))))

(declare-fun indexFromLeft!3 () (_ BitVec 32))

(assert (=> start!2908 (= res!5249 (and (bvsle #b00000000000000000000000000000000 indexFromLeft!3) (bvslt indexFromLeft!3 #b00000000000000000000000000100000)))))

(assert (=> start!2908 e!7713))

(assert (=> start!2908 true))

(declare-fun b!13938 () Bool)

(declare-fun res!5250 () Bool)

(assert (=> b!13938 (=> (not res!5250) (not e!7713))))

(declare-fun x!7833 () (_ BitVec 32))

(declare-fun bitAt!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!13938 (= res!5250 (bitAt!0 x!7833 (bvsub #b00000000000000000000000000011111 indexFromLeft!3)))))

(declare-fun n!295 () (_ BitVec 32))

(declare-fun x!7836 () (_ BitVec 32))

(declare-fun b!13939 () Bool)

(assert (=> b!13939 (= e!7713 (and (= x!7836 x!7833) (= n!295 (bvsub #b00000000000000000000000000011111 indexFromLeft!3)) (or (bvslt n!295 #b00000000000000000000000000000000) (bvsge n!295 #b00000000000000000000000000100000))))))

(assert (= (and start!2908 res!5249) b!13938))

(assert (= (and b!13938 res!5250) b!13939))

(declare-fun m!17911 () Bool)

(assert (=> b!13938 m!17911))

(push 1)

(assert (not b!13938))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

