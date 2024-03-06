; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13568 () Bool)

(assert start!13568)

(assert (=> start!13568 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

