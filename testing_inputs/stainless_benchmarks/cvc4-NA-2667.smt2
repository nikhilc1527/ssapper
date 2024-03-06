; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14360 () Bool)

(assert start!14360)

(assert (=> start!14360 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

