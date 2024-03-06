; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15384 () Bool)

(assert start!15384)

(assert (=> start!15384 false))

(push 1)

(check-sat)

(pop 1)

