; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14046 () Bool)

(assert start!14046)

(assert (=> start!14046 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

