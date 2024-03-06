; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13500 () Bool)

(assert start!13500)

(assert (=> start!13500 false))

(push 1)

(check-sat)

(pop 1)

