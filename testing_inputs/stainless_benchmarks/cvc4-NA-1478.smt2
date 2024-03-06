; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10110 () Bool)

(assert start!10110)

(declare-fun n!1695 () (_ BitVec 32))

(assert (=> start!10110 (and (= n!1695 #b00000000000000000000000000000001) (bvslt n!1695 #b00000000000000000000000000000000))))

(assert (=> start!10110 true))

(push 1)

(check-sat)

(pop 1)

