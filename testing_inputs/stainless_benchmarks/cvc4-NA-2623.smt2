; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14272 () Bool)

(assert start!14272)

(assert (=> start!14272 false))

(push 1)

(check-sat)

(pop 1)

