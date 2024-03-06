; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13696 () Bool)

(assert start!13696)

(assert (=> start!13696 false))

(assert (=> start!13696 true))

(push 1)

(check-sat)

(pop 1)

