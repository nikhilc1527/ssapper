; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12966 () Bool)

(assert start!12966)

(assert (=> start!12966 false))

(push 1)

(check-sat)

(pop 1)

