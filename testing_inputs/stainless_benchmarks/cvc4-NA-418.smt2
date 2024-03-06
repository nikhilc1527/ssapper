; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2852 () Bool)

(assert start!2852)

(declare-fun b!13584 () Bool)

(declare-fun x!7763 () (_ BitVec 32))

(assert (=> start!2852 (and (= b!13584 (= (bvlshr x!7763 #b00000000000000000000000000011111) #b00000000000000000000000000000001)) (not (= b!13584 (bvslt x!7763 #b00000000000000000000000000000000))))))

(assert (=> start!2852 true))

(push 1)

(check-sat)

(pop 1)

