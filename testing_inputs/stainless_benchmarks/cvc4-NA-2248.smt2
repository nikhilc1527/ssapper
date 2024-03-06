; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13466 () Bool)

(assert start!13466)

(assert (=> start!13466 false))

(push 1)

(check-sat)

(pop 1)

