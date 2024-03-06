; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15382 () Bool)

(assert start!15382)

(assert (=> start!15382 false))

(assert (=> start!15382 true))

(push 1)

(check-sat)

(pop 1)

