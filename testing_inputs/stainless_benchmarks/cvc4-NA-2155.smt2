; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13280 () Bool)

(assert start!13280)

(assert (=> start!13280 false))

(push 1)

(check-sat)

(pop 1)

