; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14554 () Bool)

(assert start!14554)

(assert (=> start!14554 false))

(assert (=> start!14554 true))

(push 1)

(check-sat)

(pop 1)

