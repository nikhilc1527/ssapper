; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2850 () Bool)

(assert start!2850)

(declare-fun res!5164 () Bool)

(declare-fun x!7781 () (_ BitVec 32))

(assert (=> start!2850 (and (= res!5164 (= (bvand x!7781 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= res!5164 (= (bvsrem x!7781 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> start!2850 true))

(push 1)

(check-sat)

(pop 1)

