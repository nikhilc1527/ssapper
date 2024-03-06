; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!598 () Bool)

(assert start!598)

(declare-fun x!1625 () (_ BitVec 32))

(declare-fun n!198 () (_ BitVec 32))

(declare-fun n!197 () (_ BitVec 32))

(declare-fun x!1624 () (_ BitVec 32))

(assert (=> start!598 (and (bvsge x!1624 #b00000000000000000000000000000000) (bvslt x!1624 #b00000000000000000000000001100100) (bvsge n!197 #b00000000000000000000000000000000) (not (= n!197 #b00000000000000000000000000000000)) (= x!1625 x!1624) (= n!198 (bvsub n!197 #b00000000000000000000000000000001)) (bvslt n!198 #b00000000000000000000000000000000))))

(assert (=> start!598 true))

(push 1)

(check-sat)

(pop 1)

