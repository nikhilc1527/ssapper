; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14518 () Bool)

(assert start!14518)

(assert (=> start!14518 false))

(push 1)

(check-sat)

(pop 1)

