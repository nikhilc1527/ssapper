; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14202 () Bool)

(assert start!14202)

(assert (=> start!14202 false))

(push 1)

(check-sat)

(pop 1)

