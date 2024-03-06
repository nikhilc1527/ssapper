; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14344 () Bool)

(assert start!14344)

(assert (=> start!14344 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

