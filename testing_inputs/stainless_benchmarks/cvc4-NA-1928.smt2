; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12792 () Bool)

(assert start!12792)

(assert (=> start!12792 false))

(push 1)

(check-sat)

(pop 1)

