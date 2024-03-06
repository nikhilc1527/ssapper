; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2762 () Bool)

(assert start!2762)

(declare-fun n2!42 () (_ BitVec 3))

(declare-fun n3!12 () (_ BitVec 3))

(declare-fun n1!38 () (_ BitVec 3))

(assert (=> start!2762 (and (bvule n2!42 n3!12) (bvule n1!38 (bvsub n3!12 n2!42)) (= (bvadd n1!38 n2!42) n3!12) (not (= (bvsub n3!12 n1!38) n2!42)))))

(assert (=> start!2762 true))

(push 1)

(check-sat)

(pop 1)

