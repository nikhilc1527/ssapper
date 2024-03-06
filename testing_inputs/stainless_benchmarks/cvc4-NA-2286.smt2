; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13546 () Bool)

(assert start!13546)

(assert (=> start!13546 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

