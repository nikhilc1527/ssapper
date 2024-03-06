; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13676 () Bool)

(assert start!13676)

(assert (=> start!13676 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

