; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8126 () Bool)

(assert start!8126)

(assert (=> start!8126 false))

(assert (=> start!8126 true))

(push 1)

(check-sat)

(pop 1)

