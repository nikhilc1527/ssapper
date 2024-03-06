; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14106 () Bool)

(assert start!14106)

(assert (=> start!14106 false))

(assert (=> start!14106 true))

(push 1)

(check-sat)

(pop 1)

