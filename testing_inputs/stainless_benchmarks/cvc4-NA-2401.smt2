; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13794 () Bool)

(assert start!13794)

(assert (=> start!13794 false))

(push 1)

(check-sat)

(pop 1)

