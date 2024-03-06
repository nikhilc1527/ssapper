; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8458 () Bool)

(assert start!8458)

(assert (=> start!8458 false))

(assert (=> start!8458 true))

(push 1)

(check-sat)

(pop 1)

