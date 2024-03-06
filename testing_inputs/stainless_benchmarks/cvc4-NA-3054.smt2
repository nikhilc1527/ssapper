; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15262 () Bool)

(assert start!15262)

(assert (=> start!15262 false))

(push 1)

(check-sat)

(pop 1)

