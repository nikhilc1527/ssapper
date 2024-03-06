; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14486 () Bool)

(assert start!14486)

(assert (=> start!14486 false))

(push 1)

(check-sat)

(pop 1)

