; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12788 () Bool)

(assert start!12788)

(assert (=> start!12788 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

