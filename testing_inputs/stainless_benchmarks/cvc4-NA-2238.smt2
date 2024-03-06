; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13446 () Bool)

(assert start!13446)

(assert (=> start!13446 false))

(push 1)

(check-sat)

(pop 1)

