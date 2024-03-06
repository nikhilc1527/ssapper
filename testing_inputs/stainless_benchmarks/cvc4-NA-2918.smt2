; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14948 () Bool)

(assert start!14948)

(assert (=> start!14948 false))

(push 1)

(check-sat)

(pop 1)

