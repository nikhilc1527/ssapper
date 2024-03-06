; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14500 () Bool)

(assert start!14500)

(assert (=> start!14500 false))

(push 1)

(check-sat)

(pop 1)

