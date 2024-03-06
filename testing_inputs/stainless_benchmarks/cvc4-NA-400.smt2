; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2816 () Bool)

(assert start!2816)

(declare-fun n1!42 () (_ BitVec 200))

(declare-fun n2!46 () (_ BitVec 200))

(assert (=> start!2816 (and (bvsgt n1!42 n2!46) (bvsge n2!46 n1!42))))

(assert (=> start!2816 true))

(push 1)

(check-sat)

(pop 1)

