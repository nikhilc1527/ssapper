; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13912 () Bool)

(assert start!13912)

(assert (=> start!13912 false))

(push 1)

(check-sat)

(pop 1)

