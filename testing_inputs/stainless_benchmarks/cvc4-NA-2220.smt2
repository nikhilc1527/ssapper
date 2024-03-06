; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13410 () Bool)

(assert start!13410)

(assert (=> start!13410 false))

(push 1)

(check-sat)

(pop 1)

