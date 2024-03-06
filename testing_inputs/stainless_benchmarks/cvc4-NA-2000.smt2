; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12948 () Bool)

(assert start!12948)

(assert (=> start!12948 false))

(push 1)

(check-sat)

(pop 1)

