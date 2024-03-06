; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8482 () Bool)

(assert start!8482)

(assert (=> start!8482 false))

(assert (=> start!8482 true))

(push 1)

(check-sat)

(pop 1)

