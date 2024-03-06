; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13710 () Bool)

(assert start!13710)

(assert (=> start!13710 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

