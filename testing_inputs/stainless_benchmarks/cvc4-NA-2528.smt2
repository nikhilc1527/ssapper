; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14078 () Bool)

(assert start!14078)

(assert (=> start!14078 false))

(push 1)

(check-sat)

(pop 1)

