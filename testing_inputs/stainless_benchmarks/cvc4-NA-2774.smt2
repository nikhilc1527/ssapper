; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14612 () Bool)

(assert start!14612)

(assert (=> start!14612 false))

(assert (=> start!14612 true))

(push 1)

(check-sat)

(pop 1)

