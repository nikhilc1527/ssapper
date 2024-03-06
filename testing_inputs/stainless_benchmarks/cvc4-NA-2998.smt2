; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15120 () Bool)

(assert start!15120)

(assert (=> start!15120 false))

(push 1)

(check-sat)

(pop 1)

