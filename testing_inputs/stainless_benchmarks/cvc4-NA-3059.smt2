; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15272 () Bool)

(assert start!15272)

(assert (=> start!15272 false))

(assert (=> start!15272 true))

(push 1)

(check-sat)

(pop 1)

