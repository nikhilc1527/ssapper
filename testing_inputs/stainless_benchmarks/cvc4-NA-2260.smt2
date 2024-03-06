; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13494 () Bool)

(assert start!13494)

(assert (=> start!13494 false))

(assert (=> start!13494 true))

(push 1)

(check-sat)

(pop 1)

