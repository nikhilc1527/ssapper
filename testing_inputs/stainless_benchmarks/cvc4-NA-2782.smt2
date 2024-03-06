; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14628 () Bool)

(assert start!14628)

(assert (=> start!14628 false))

(assert (=> start!14628 true))

(push 1)

(check-sat)

(pop 1)

