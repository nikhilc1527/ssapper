; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13284 () Bool)

(assert start!13284)

(assert (=> start!13284 false))

(push 1)

(check-sat)

(pop 1)

