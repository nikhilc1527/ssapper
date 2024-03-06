; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13070 () Bool)

(assert start!13070)

(assert (=> start!13070 false))

(assert (=> start!13070 true))

(push 1)

(check-sat)

(pop 1)

