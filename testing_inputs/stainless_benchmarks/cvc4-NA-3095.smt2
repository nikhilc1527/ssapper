; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15344 () Bool)

(assert start!15344)

(assert (=> start!15344 false))

(push 1)

(check-sat)

(pop 1)

