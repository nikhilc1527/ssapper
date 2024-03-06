; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14104 () Bool)

(assert start!14104)

(assert (=> start!14104 false))

(push 1)

(check-sat)

(pop 1)

