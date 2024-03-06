; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13692 () Bool)

(assert start!13692)

(assert (=> start!13692 false))

(push 1)

(check-sat)

(pop 1)

