; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13332 () Bool)

(assert start!13332)

(assert (=> start!13332 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

