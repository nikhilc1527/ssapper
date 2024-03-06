; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9694 () Bool)

(assert start!9694)

(declare-fun j!71 () (_ BitVec 32))

(assert (=> start!9694 (and (= j!71 #b00000000000000000000000000000011) (bvslt j!71 #b00000000000000000000000000000000))))

(assert (=> start!9694 true))

(push 1)

(check-sat)

(pop 1)

