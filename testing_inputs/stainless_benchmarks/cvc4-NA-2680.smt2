; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14404 () Bool)

(assert start!14404)

(assert (=> start!14404 false))

(assert (=> start!14404 true))

(push 1)

(check-sat)

(pop 1)

