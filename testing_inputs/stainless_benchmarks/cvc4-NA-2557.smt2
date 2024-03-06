; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14136 () Bool)

(assert start!14136)

(assert (=> start!14136 false))

(push 1)

(check-sat)

(pop 1)

