; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13486 () Bool)

(assert start!13486)

(assert (=> start!13486 false))

(push 1)

(check-sat)

(pop 1)

