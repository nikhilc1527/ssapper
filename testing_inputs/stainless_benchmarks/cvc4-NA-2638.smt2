; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14302 () Bool)

(assert start!14302)

(assert (=> start!14302 false))

(push 1)

(check-sat)

(pop 1)

