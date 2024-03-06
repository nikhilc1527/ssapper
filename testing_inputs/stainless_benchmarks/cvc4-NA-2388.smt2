; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13768 () Bool)

(assert start!13768)

(assert (=> start!13768 false))

(push 1)

(check-sat)

(pop 1)

