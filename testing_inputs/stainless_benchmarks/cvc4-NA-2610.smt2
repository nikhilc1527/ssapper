; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14242 () Bool)

(assert start!14242)

(assert (=> start!14242 false))

(push 1)

(check-sat)

(pop 1)

