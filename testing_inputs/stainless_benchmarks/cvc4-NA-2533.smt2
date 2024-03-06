; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14088 () Bool)

(assert start!14088)

(assert (=> start!14088 false))

(push 1)

(check-sat)

(pop 1)

