; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8454 () Bool)

(assert start!8454)

(assert (=> start!8454 false))

(assert (=> start!8454 true))

(push 1)

(check-sat)

(pop 1)

