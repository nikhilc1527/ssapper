; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8432 () Bool)

(assert start!8432)

(declare-fun l!1331 () (_ BitVec 64))

(declare-fun m!63667 () (_ BitVec 64))

(assert (=> start!8432 (and (= l!1331 #b0000000000000000000000000000001000000000000000000000000000000000) (= m!63667 #b0000000000000000000000000000000001000000000000000000000000000000) (= m!63667 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> start!8432 true))

(push 1)

(check-sat)

(pop 1)

