; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13994 () Bool)

(assert start!13994)

(assert (=> start!13994 false))

(push 1)

(check-sat)

(pop 1)

