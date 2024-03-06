; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15366 () Bool)

(assert start!15366)

(assert (=> start!15366 false))

(push 1)

(check-sat)

(pop 1)

