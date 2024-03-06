; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12996 () Bool)

(assert start!12996)

(assert (=> start!12996 false))

(assert (=> start!12996 true))

(push 1)

(check-sat)

(pop 1)

