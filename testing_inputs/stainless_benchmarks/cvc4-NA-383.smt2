; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2782 () Bool)

(assert start!2782)

(declare-fun n1!39 () (_ BitVec 200))

(declare-fun n2!43 () (_ BitVec 200))

(assert (=> start!2782 (and (bvugt n1!39 n2!43) (bvuge n2!43 n1!39))))

(assert (=> start!2782 true))

(push 1)

(check-sat)

(pop 1)

