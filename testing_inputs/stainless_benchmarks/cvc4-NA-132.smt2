; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!738 () Bool)

(assert start!738)

(declare-fun x!1976 () (_ BitVec 32))

(declare-fun d!3368 () (_ BitVec 32))

(assert (=> start!738 (and (not (= x!1976 #b00000000000000000000000000000000)) (bvsgt x!1976 #b10000000000000000000000000000000) (= d!3368 (bvneg x!1976)) (= d!3368 #b00000000000000000000000000000000))))

(assert (=> start!738 true))

(push 1)

(check-sat)

(pop 1)

