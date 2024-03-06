; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14358 () Bool)

(assert start!14358)

(assert (=> start!14358 false))

(push 1)

(check-sat)

(pop 1)

