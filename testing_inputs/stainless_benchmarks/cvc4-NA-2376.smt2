; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13744 () Bool)

(assert start!13744)

(assert (=> start!13744 false))

(push 1)

(check-sat)

(pop 1)

