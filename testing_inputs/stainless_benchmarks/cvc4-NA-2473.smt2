; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13960 () Bool)

(assert start!13960)

(assert (=> start!13960 false))

(push 1)

(check-sat)

(pop 1)

