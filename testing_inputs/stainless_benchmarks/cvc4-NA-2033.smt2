; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13014 () Bool)

(assert start!13014)

(assert (=> start!13014 false))

(push 1)

(check-sat)

(pop 1)

