; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13952 () Bool)

(assert start!13952)

(assert (=> start!13952 false))

(push 1)

(check-sat)

(pop 1)

