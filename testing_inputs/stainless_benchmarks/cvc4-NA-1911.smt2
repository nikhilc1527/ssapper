; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12758 () Bool)

(assert start!12758)

(assert (=> start!12758 false))

(assert (=> start!12758 true))

(push 1)

(check-sat)

(pop 1)

