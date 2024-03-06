; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15112 () Bool)

(assert start!15112)

(assert (=> start!15112 false))

(push 1)

(check-sat)

(pop 1)

