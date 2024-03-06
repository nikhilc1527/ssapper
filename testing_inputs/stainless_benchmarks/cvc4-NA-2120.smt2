; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13210 () Bool)

(assert start!13210)

(assert (=> start!13210 false))

(assert (=> start!13210 true))

(push 1)

(check-sat)

(pop 1)

