; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14550 () Bool)

(assert start!14550)

(assert (=> start!14550 false))

(assert (=> start!14550 true))

(push 1)

(check-sat)

(pop 1)

