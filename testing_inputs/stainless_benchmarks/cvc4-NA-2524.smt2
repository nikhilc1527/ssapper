; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14070 () Bool)

(assert start!14070)

(assert (=> start!14070 false))

(push 1)

(check-sat)

(pop 1)

