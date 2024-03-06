; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15460 () Bool)

(assert start!15460)

(assert (=> start!15460 false))

(push 1)

(check-sat)

(pop 1)

