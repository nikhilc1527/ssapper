; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13364 () Bool)

(assert start!13364)

(assert (=> start!13364 false))

(push 1)

(check-sat)

(pop 1)

