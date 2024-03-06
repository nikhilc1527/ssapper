; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12950 () Bool)

(assert start!12950)

(assert (=> start!12950 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

