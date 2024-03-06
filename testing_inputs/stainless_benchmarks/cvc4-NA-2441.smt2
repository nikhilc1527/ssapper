; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13878 () Bool)

(assert start!13878)

(assert (=> start!13878 false))

(push 1)

(check-sat)

(pop 1)

