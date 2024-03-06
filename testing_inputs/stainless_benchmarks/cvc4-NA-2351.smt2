; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13694 () Bool)

(assert start!13694)

(assert (=> start!13694 false))

(push 1)

(check-sat)

(pop 1)

