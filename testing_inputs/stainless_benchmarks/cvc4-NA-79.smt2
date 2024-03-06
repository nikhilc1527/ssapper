; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!592 () Bool)

(assert start!592)

(declare-fun x!1629 () (_ BitVec 32))

(declare-fun n!200 () (_ BitVec 32))

(declare-fun x!1627 () (_ BitVec 32))

(declare-fun x!1630 () (_ BitVec 32))

(assert (=> start!592 (and (bvsge x!1627 #b00000000000000000000000000000000) (bvslt x!1627 #b00000000000000000000000001100100) (= x!1629 x!1627) (= x!1630 x!1627) (= n!200 (bvadd x!1627 #b00000000000000000000000000000001)) (bvslt n!200 #b00000000000000000000000000000000))))

(assert (=> start!592 true))

(push 1)

(check-sat)

(pop 1)

