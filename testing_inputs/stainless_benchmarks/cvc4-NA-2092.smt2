; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13136 () Bool)

(assert start!13136)

(assert (=> start!13136 false))

(push 1)

(check-sat)

(pop 1)

