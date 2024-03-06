; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13002 () Bool)

(assert start!13002)

(assert (=> start!13002 false))

(assert (=> start!13002 true))

(push 1)

(check-sat)

(pop 1)

