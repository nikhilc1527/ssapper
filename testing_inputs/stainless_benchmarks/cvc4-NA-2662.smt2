; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14350 () Bool)

(assert start!14350)

(assert (=> start!14350 false))

(push 1)

(check-sat)

(pop 1)

