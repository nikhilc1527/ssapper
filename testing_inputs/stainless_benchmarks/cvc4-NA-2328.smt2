; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13648 () Bool)

(assert start!13648)

(assert (=> start!13648 false))

(push 1)

(check-sat)

(pop 1)

