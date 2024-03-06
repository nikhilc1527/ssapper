; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15234 () Bool)

(assert start!15234)

(assert (=> start!15234 false))

(push 1)

(check-sat)

(pop 1)

