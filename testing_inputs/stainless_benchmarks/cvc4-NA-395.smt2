; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2806 () Bool)

(assert start!2806)

(declare-fun n!230 () (_ BitVec 10))

(assert (=> start!2806 (not (= (bvxor n!230 n!230) #b0000000000))))

(assert (=> start!2806 true))

(push 1)

(check-sat)

(pop 1)

