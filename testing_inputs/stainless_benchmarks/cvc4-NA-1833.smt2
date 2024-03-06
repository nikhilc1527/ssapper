; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12410 () Bool)

(assert start!12410)

(declare-fun c1!1 () (_ BitVec 16))

(declare-fun c2!1 () (_ BitVec 16))

(assert (=> start!12410 (bvuge c1!1 c2!1)))

(assert (=> start!12410 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

