; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8472 () Bool)

(assert start!8472)

(assert (=> start!8472 false))

(assert (=> start!8472 true))

(push 1)

(check-sat)

(pop 1)

