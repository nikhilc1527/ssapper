; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12930 () Bool)

(assert start!12930)

(assert (=> start!12930 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

