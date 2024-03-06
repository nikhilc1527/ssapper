; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15374 () Bool)

(assert start!15374)

(assert (=> start!15374 false))

(assert (=> start!15374 true))

(push 1)

(check-sat)

(pop 1)

