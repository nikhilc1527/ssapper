; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14400 () Bool)

(assert start!14400)

(assert (=> start!14400 false))

(push 1)

(check-sat)

(pop 1)

