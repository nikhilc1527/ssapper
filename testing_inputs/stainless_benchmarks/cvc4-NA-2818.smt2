; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14712 () Bool)

(assert start!14712)

(assert (=> start!14712 false))

(assert (=> start!14712 true))

(push 1)

(check-sat)

(pop 1)

