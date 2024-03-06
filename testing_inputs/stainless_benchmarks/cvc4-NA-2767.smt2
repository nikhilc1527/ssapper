; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14586 () Bool)

(assert start!14586)

(assert (=> start!14586 false))

(push 1)

(check-sat)

(pop 1)

