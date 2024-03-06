; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15462 () Bool)

(assert start!15462)

(assert (=> start!15462 false))

(push 1)

(check-sat)

(pop 1)

