; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12916 () Bool)

(assert start!12916)

(assert (=> start!12916 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

