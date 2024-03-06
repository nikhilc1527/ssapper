; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10112 () Bool)

(assert start!10112)

(declare-datatypes () ((Nat!289 (Zero!269) (Succ!264 (num!19 Nat!289)))))

(declare-fun a!806 () Nat!289)

(declare-fun n!1697 () (_ BitVec 32))

(assert (=> start!10112 (and (= a!806 (Succ!264 Zero!269)) (= n!1697 #b00000000000000000000000000000010) (bvslt n!1697 #b00000000000000000000000000000000))))

(assert (=> start!10112 true))

(push 1)

(check-sat)

(pop 1)

