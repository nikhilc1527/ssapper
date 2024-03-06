; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13780 () Bool)

(assert start!13780)

(assert (=> start!13780 false))

(push 1)

(check-sat)

(pop 1)

