; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15246 () Bool)

(assert start!15246)

(assert (=> start!15246 false))

(push 1)

(check-sat)

(pop 1)

