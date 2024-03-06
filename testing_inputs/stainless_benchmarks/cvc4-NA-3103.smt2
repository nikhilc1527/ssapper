; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15360 () Bool)

(assert start!15360)

(assert (=> start!15360 false))

(push 1)

(check-sat)

(pop 1)

