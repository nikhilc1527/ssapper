; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2774 () Bool)

(assert start!2774)

(declare-fun n!221 () (_ BitVec 100))

(assert (=> start!2774 (not (= (bvand n!221 n!221) n!221))))

(assert (=> start!2774 true))

(push 1)

(check-sat)

(pop 1)

