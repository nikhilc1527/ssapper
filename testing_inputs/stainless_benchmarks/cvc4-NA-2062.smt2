; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13076 () Bool)

(assert start!13076)

(assert (=> start!13076 false))

(push 1)

(check-sat)

(pop 1)

