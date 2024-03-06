; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14366 () Bool)

(assert start!14366)

(assert (=> start!14366 false))

(push 1)

(check-sat)

(pop 1)

