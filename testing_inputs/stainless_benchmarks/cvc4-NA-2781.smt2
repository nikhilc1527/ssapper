; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14626 () Bool)

(assert start!14626)

(assert (=> start!14626 false))

(push 1)

(check-sat)

(pop 1)

