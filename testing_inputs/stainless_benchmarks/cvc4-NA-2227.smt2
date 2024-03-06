; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13424 () Bool)

(assert start!13424)

(assert (=> start!13424 false))

(push 1)

(check-sat)

(pop 1)

