; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13292 () Bool)

(assert start!13292)

(assert (=> start!13292 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

