; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13988 () Bool)

(assert start!13988)

(assert (=> start!13988 false))

(assert (=> start!13988 true))

(push 1)

(check-sat)

(pop 1)

