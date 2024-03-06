; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13436 () Bool)

(assert start!13436)

(assert (=> start!13436 false))

(push 1)

(check-sat)

(pop 1)

