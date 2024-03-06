; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13950 () Bool)

(assert start!13950)

(assert (=> start!13950 false))

(push 1)

(check-sat)

(pop 1)

