; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14872 () Bool)

(assert start!14872)

(assert (=> start!14872 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

