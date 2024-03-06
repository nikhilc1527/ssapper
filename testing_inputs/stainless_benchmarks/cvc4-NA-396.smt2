; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2808 () Bool)

(assert start!2808)

(declare-fun n!228 () (_ BitVec 100))

(assert (=> start!2808 (not (= (bvand n!228 n!228) n!228))))

(assert (=> start!2808 true))

(push 1)

(check-sat)

(pop 1)

