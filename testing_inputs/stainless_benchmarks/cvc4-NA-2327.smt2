; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13646 () Bool)

(assert start!13646)

(assert (=> start!13646 false))

(assert (=> start!13646 true))

(push 1)

(check-sat)

(pop 1)

