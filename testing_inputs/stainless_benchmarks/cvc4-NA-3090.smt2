; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15334 () Bool)

(assert start!15334)

(assert (=> start!15334 false))

(push 1)

(check-sat)

(pop 1)

