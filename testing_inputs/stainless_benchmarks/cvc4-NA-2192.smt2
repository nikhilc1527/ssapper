; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13354 () Bool)

(assert start!13354)

(assert (=> start!13354 false))

(push 1)

(check-sat)

(pop 1)

