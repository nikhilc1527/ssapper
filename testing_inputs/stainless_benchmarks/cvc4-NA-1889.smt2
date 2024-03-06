; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12666 () Bool)

(assert start!12666)

(assert (=> start!12666 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

