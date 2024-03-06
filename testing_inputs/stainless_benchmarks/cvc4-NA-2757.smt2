; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14566 () Bool)

(assert start!14566)

(assert (=> start!14566 false))

(push 1)

(check-sat)

(pop 1)

