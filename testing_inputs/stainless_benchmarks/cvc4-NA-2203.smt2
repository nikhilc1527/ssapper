; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13376 () Bool)

(assert start!13376)

(assert (=> start!13376 false))

(push 1)

(check-sat)

(pop 1)

