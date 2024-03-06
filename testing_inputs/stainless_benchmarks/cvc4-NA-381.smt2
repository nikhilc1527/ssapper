; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2778 () Bool)

(assert start!2778)

(declare-fun n!227 () (_ BitVec 200))

(assert (=> start!2778 (not (= (bvor n!227 n!227) n!227))))

(assert (=> start!2778 true))

(push 1)

(check-sat)

(pop 1)

