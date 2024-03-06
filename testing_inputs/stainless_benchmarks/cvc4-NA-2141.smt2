; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13252 () Bool)

(assert start!13252)

(assert (=> start!13252 false))

(assert (=> start!13252 true))

(push 1)

(check-sat)

(pop 1)

