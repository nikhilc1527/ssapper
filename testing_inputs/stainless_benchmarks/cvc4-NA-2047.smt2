; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13042 () Bool)

(assert start!13042)

(assert (=> start!13042 false))

(push 1)

(check-sat)

(pop 1)

