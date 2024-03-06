; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14200 () Bool)

(assert start!14200)

(assert (=> start!14200 false))

(push 1)

(check-sat)

(pop 1)

