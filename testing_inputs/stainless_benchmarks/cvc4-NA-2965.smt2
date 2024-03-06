; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15054 () Bool)

(assert start!15054)

(assert (=> start!15054 false))

(push 1)

(check-sat)

(pop 1)

