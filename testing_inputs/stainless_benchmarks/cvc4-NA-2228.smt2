; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13426 () Bool)

(assert start!13426)

(assert (=> start!13426 false))

(push 1)

(check-sat)

(pop 1)

