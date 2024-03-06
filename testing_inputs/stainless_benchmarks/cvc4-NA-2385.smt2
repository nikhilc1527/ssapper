; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13762 () Bool)

(assert start!13762)

(assert (=> start!13762 false))

(assert (=> start!13762 true))

(push 1)

(check-sat)

(pop 1)

