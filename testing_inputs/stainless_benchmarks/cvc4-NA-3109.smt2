; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15372 () Bool)

(assert start!15372)

(assert (=> start!15372 false))

(push 1)

(check-sat)

(pop 1)

