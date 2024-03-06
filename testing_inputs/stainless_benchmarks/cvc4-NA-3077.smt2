; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15308 () Bool)

(assert start!15308)

(assert (=> start!15308 false))

(push 1)

(check-sat)

(pop 1)

