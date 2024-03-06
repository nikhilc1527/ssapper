; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13202 () Bool)

(assert start!13202)

(assert (=> start!13202 false))

(push 1)

(check-sat)

(pop 1)

