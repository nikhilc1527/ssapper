; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13200 () Bool)

(assert start!13200)

(assert (=> start!13200 false))

(push 1)

(check-sat)

(pop 1)

