; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10114 () Bool)

(assert start!10114)

(declare-fun n!1687 () (_ BitVec 32))

(declare-fun n!1688 () (_ BitVec 32))

(assert (=> start!10114 (and (bvsge n!1687 #b00000000000000000000000000000000) (not (= n!1687 #b00000000000000000000000000000000)) (= n!1688 (bvsub n!1687 #b00000000000000000000000000000001)) (bvslt n!1688 #b00000000000000000000000000000000))))

(assert (=> start!10114 true))

(push 1)

(check-sat)

(pop 1)

