; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13948 () Bool)

(assert start!13948)

(assert (=> start!13948 false))

(push 1)

(check-sat)

(pop 1)

