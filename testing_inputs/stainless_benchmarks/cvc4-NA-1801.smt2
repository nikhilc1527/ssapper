; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12250 () Bool)

(assert start!12250)

(declare-fun a!1113 () (_ BitVec 32))

(declare-fun b!91245 () (_ BitVec 32))

(declare-fun a!1114 () (_ BitVec 32))

(assert (=> start!12250 (and (bvsgt a!1113 #b00000000000000000000000000000000) (= b!91245 a!1113) (bvsgt b!91245 #b00000000000000000000000000000000) (= a!1114 #b00000000000000000000000000000001) (bvsle a!1114 #b00000000000000000000000000000000))))

(assert (=> start!12250 true))

(push 1)

(check-sat)

(pop 1)

