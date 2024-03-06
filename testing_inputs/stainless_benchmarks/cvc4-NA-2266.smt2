; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13506 () Bool)

(assert start!13506)

(assert (=> start!13506 false))

(push 1)

(check-sat)

(pop 1)

