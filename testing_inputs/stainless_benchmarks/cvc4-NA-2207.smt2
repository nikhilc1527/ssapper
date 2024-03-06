; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13384 () Bool)

(assert start!13384)

(assert (=> start!13384 false))

(push 1)

(check-sat)

(pop 1)

