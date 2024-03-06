; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13086 () Bool)

(assert start!13086)

(assert (=> start!13086 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

