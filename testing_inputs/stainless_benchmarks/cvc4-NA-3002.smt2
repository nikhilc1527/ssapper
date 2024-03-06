; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15128 () Bool)

(assert start!15128)

(assert (=> start!15128 false))

(push 1)

(check-sat)

(pop 1)

