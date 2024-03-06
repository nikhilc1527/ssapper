; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13574 () Bool)

(assert start!13574)

(assert (=> start!13574 false))

(push 1)

(check-sat)

(pop 1)

