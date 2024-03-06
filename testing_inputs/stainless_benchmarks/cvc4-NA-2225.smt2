; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13420 () Bool)

(assert start!13420)

(assert (=> start!13420 false))

(assert (=> start!13420 true))

(push 1)

(check-sat)

(pop 1)

