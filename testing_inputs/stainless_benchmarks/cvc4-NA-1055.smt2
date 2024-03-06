; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7746 () Bool)

(assert start!7746)

(declare-fun n!1560 () (_ BitVec 32))

(declare-fun n!1563 () (_ BitVec 32))

(assert (=> start!7746 (and (bvsge n!1560 #b00000000000000000000000000000000) (bvsgt n!1560 #b00000000000000000000000000000000) (= n!1563 (bvsub n!1560 #b00000000000000000000000000000001)) (bvslt n!1563 #b00000000000000000000000000000000))))

(assert (=> start!7746 true))

(push 1)

(check-sat)

(pop 1)

