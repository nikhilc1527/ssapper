; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15332 () Bool)

(assert start!15332)

(assert (=> start!15332 false))

(push 1)

(check-sat)

(pop 1)

