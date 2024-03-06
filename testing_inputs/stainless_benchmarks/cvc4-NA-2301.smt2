; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13576 () Bool)

(assert start!13576)

(assert (=> start!13576 false))

(push 1)

(check-sat)

(pop 1)

