; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15342 () Bool)

(assert start!15342)

(assert (=> start!15342 false))

(push 1)

(check-sat)

(pop 1)

