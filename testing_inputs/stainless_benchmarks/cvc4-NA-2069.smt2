; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13090 () Bool)

(assert start!13090)

(assert (=> start!13090 false))

(assert (=> start!13090 true))

(push 1)

(check-sat)

(pop 1)

