; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13738 () Bool)

(assert start!13738)

(assert (=> start!13738 false))

(push 1)

(check-sat)

(pop 1)

