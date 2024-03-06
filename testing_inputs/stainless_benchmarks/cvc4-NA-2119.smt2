; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13208 () Bool)

(assert start!13208)

(assert (=> start!13208 false))

(push 1)

(check-sat)

(pop 1)

