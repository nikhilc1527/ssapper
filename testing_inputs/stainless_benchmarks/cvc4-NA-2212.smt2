; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13394 () Bool)

(assert start!13394)

(assert (=> start!13394 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

