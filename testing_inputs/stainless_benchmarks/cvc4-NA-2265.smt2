; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13504 () Bool)

(assert start!13504)

(assert (=> start!13504 false))

(push 1)

(check-sat)

(pop 1)

