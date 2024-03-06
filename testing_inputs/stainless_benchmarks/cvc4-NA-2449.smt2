; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13894 () Bool)

(assert start!13894)

(assert (=> start!13894 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

