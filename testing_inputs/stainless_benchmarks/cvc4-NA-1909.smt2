; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12754 () Bool)

(assert start!12754)

(assert (=> start!12754 false))

(assert (=> start!12754 true))

(push 1)

(check-sat)

(pop 1)

