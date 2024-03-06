; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13234 () Bool)

(assert start!13234)

(assert (=> start!13234 false))

(push 1)

(check-sat)

(pop 1)

