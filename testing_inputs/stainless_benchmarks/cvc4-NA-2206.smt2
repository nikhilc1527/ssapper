; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13382 () Bool)

(assert start!13382)

(assert (=> start!13382 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

