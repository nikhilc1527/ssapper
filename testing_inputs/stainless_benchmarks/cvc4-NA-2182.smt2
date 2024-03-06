; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13334 () Bool)

(assert start!13334)

(assert (=> start!13334 false))

(push 1)

(check-sat)

(pop 1)

