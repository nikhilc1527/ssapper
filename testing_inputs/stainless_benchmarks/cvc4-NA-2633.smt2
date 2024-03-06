; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14292 () Bool)

(assert start!14292)

(assert (=> start!14292 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

