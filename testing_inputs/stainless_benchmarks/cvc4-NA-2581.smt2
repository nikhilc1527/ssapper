; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14184 () Bool)

(assert start!14184)

(assert (=> start!14184 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

