; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13186 () Bool)

(assert start!13186)

(assert (=> start!13186 false))

(assert (=> start!13186 true))

(push 1)

(check-sat)

(pop 1)

