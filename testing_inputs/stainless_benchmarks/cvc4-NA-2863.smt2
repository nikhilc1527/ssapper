; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14814 () Bool)

(assert start!14814)

(assert (=> start!14814 false))

(push 1)

(check-sat)

(pop 1)

