; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12936 () Bool)

(assert start!12936)

(assert (=> start!12936 false))

(assert (=> start!12936 true))

(push 1)

(check-sat)

(pop 1)

