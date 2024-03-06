; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15354 () Bool)

(assert start!15354)

(assert (=> start!15354 false))

(push 1)

(check-sat)

(pop 1)

