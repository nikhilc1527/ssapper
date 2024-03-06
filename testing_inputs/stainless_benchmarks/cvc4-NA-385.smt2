; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2786 () Bool)

(assert start!2786)

(declare-fun n2!44 () (_ BitVec 5))

(declare-fun n1!40 () (_ BitVec 5))

(declare-fun n3!13 () (_ BitVec 5))

(assert (=> start!2786 (and (not (= n2!44 #b00000)) (bvule n1!40 (bvudiv n3!13 n2!44)) (= (bvmul n1!40 n2!44) n3!13) (not (= n1!40 (bvudiv n3!13 n2!44))))))

(assert (=> start!2786 true))

(push 1)

(check-sat)

(pop 1)

