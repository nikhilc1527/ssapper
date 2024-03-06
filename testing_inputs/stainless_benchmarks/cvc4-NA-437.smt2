; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2910 () Bool)

(assert start!2910)

(declare-fun res!5255 () Bool)

(declare-fun e!7716 () Bool)

(assert (=> start!2910 (=> (not res!5255) (not e!7716))))

(declare-fun indexFromLeft!3 () (_ BitVec 32))

(assert (=> start!2910 (= res!5255 (and (bvsle #b00000000000000000000000000000000 indexFromLeft!3) (bvslt indexFromLeft!3 #b00000000000000000000000000100000)))))

(assert (=> start!2910 e!7716))

(assert (=> start!2910 true))

(declare-fun b!13944 () Bool)

(declare-fun res!5256 () Bool)

(assert (=> b!13944 (=> (not res!5256) (not e!7716))))

(declare-fun x!7833 () (_ BitVec 32))

(declare-fun bitAt!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!13944 (= res!5256 (not (bitAt!0 x!7833 (bvsub #b00000000000000000000000000011111 indexFromLeft!3))))))

(declare-fun b!13945 () Bool)

(declare-fun indexFromLeft!4 () (_ BitVec 32))

(declare-fun x!7838 () (_ BitVec 32))

(assert (=> b!13945 (= e!7716 (and (not (= indexFromLeft!3 #b00000000000000000000000000000000)) (= x!7838 x!7833) (= indexFromLeft!4 (bvsub indexFromLeft!3 #b00000000000000000000000000000001)) (or (bvsgt #b00000000000000000000000000000000 indexFromLeft!4) (bvsge indexFromLeft!4 #b00000000000000000000000000100000))))))

(assert (= (and start!2910 res!5255) b!13944))

(assert (= (and b!13944 res!5256) b!13945))

(declare-fun m!17913 () Bool)

(assert (=> b!13944 m!17913))

(push 1)

(assert (not b!13944))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

