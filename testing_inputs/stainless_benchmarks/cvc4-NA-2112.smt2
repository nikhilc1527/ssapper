; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13194 () Bool)

(assert start!13194)

(assert (=> start!13194 false))

(assert (=> start!13194 true))

(push 1)

(check-sat)

(pop 1)

