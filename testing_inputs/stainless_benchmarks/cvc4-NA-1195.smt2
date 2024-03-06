; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8478 () Bool)

(assert start!8478)

(assert (=> start!8478 false))

(assert (=> start!8478 true))

(push 1)

(check-sat)

(pop 1)

