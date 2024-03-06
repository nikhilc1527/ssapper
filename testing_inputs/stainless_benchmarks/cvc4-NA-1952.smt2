; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12852 () Bool)

(assert start!12852)

(assert (=> start!12852 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

