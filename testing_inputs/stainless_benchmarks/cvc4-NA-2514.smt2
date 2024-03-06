; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14050 () Bool)

(assert start!14050)

(assert (=> start!14050 false))

(push 1)

(check-sat)

(pop 1)

