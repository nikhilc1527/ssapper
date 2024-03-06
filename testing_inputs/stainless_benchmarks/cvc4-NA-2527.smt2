; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14076 () Bool)

(assert start!14076)

(assert (=> start!14076 false))

(assert (=> start!14076 true))

(push 1)

(check-sat)

(pop 1)

