; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13062 () Bool)

(assert start!13062)

(assert (=> start!13062 false))

(assert (=> start!13062 true))

(push 1)

(check-sat)

(pop 1)

