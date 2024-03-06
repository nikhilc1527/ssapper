; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15280 () Bool)

(assert start!15280)

(assert (=> start!15280 false))

(assert (=> start!15280 true))

(push 1)

(check-sat)

(pop 1)

