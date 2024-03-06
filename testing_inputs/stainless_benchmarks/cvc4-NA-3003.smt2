; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15130 () Bool)

(assert start!15130)

(assert (=> start!15130 false))

(push 1)

(check-sat)

(pop 1)

