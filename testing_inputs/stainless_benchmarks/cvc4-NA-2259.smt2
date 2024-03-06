; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13492 () Bool)

(assert start!13492)

(assert (=> start!13492 false))

(assert (=> start!13492 true))

(push 1)

(check-sat)

(pop 1)

