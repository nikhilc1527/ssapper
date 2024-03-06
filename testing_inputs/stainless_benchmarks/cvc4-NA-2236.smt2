; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13442 () Bool)

(assert start!13442)

(assert (=> start!13442 false))

(assert (=> start!13442 true))

(push 1)

(check-sat)

(pop 1)

