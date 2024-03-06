; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15452 () Bool)

(assert start!15452)

(assert (=> start!15452 false))

(push 1)

(check-sat)

(pop 1)

