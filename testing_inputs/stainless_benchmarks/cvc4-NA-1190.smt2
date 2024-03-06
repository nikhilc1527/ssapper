; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8468 () Bool)

(assert start!8468)

(assert (=> start!8468 false))

(assert (=> start!8468 true))

(push 1)

(check-sat)

(pop 1)

