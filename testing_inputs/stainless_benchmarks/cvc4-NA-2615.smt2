; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14252 () Bool)

(assert start!14252)

(assert (=> start!14252 false))

(push 1)

(check-sat)

(pop 1)

