; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14710 () Bool)

(assert start!14710)

(assert (=> start!14710 false))

(assert (=> start!14710 true))

(push 1)

(check-sat)

(pop 1)

