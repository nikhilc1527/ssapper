; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13658 () Bool)

(assert start!13658)

(assert (=> start!13658 false))

(assert (=> start!13658 true))

(push 1)

(check-sat)

(pop 1)

