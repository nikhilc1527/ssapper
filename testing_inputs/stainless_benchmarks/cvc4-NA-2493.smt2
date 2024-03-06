; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14000 () Bool)

(assert start!14000)

(assert (=> start!14000 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

