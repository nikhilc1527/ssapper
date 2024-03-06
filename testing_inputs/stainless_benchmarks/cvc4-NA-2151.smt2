; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13272 () Bool)

(assert start!13272)

(assert (=> start!13272 false))

(push 1)

(check-sat)

(pop 1)

