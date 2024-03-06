; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13842 () Bool)

(assert start!13842)

(assert (=> start!13842 false))

(assert (=> start!13842 true))

(push 1)

(check-sat)

(pop 1)

