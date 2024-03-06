; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13012 () Bool)

(assert start!13012)

(assert (=> start!13012 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

