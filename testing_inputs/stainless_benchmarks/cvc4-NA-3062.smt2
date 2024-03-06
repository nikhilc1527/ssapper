; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15278 () Bool)

(assert start!15278)

(assert (=> start!15278 false))

(push 1)

(check-sat)

(pop 1)

