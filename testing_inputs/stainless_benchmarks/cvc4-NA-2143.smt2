; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13256 () Bool)

(assert start!13256)

(assert (=> start!13256 false))

(push 1)

(check-sat)

(pop 1)

