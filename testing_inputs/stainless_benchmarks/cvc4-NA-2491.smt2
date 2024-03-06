; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13996 () Bool)

(assert start!13996)

(assert (=> start!13996 false))

(push 1)

(check-sat)

(pop 1)

