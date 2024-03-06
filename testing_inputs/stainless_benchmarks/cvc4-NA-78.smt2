; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!590 () Bool)

(assert start!590)

(assert (=> start!590 false))

(push 1)

(check-sat)

(pop 1)

