; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14900 () Bool)

(assert start!14900)

(assert (=> start!14900 false))

(push 1)

(check-sat)

(pop 1)

