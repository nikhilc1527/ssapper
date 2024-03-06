; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15364 () Bool)

(assert start!15364)

(assert (=> start!15364 false))

(push 1)

(check-sat)

(pop 1)

