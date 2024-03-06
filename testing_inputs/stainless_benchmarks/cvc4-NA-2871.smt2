; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14842 () Bool)

(assert start!14842)

(assert (=> start!14842 false))

(push 1)

(check-sat)

(pop 1)

