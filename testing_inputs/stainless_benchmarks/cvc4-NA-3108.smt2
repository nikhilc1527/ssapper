; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15370 () Bool)

(assert start!15370)

(assert (=> start!15370 false))

(push 1)

(check-sat)

(pop 1)

