; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13502 () Bool)

(assert start!13502)

(assert (=> start!13502 false))

(assert (=> start!13502 true))

(push 1)

(check-sat)

(pop 1)

