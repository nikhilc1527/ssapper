; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13000 () Bool)

(assert start!13000)

(assert (=> start!13000 false))

(assert (=> start!13000 true))

(push 1)

(check-sat)

(pop 1)

