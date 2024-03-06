; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14204 () Bool)

(assert start!14204)

(assert (=> start!14204 false))

(assert (=> start!14204 true))

(push 1)

(check-sat)

(pop 1)

