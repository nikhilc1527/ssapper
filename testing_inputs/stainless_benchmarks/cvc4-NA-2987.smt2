; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15098 () Bool)

(assert start!15098)

(assert (=> start!15098 false))

(push 1)

(check-sat)

(pop 1)

