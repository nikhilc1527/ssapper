; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14624 () Bool)

(assert start!14624)

(assert (=> start!14624 false))

(assert (=> start!14624 true))

(push 1)

(check-sat)

(pop 1)

