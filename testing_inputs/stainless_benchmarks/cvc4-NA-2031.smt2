; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13010 () Bool)

(assert start!13010)

(assert (=> start!13010 false))

(assert (=> start!13010 true))

(push 1)

(check-sat)

(pop 1)

