; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13802 () Bool)

(assert start!13802)

(assert (=> start!13802 false))

(push 1)

(check-sat)

(pop 1)

