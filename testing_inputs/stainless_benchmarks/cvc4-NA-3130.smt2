; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15414 () Bool)

(assert start!15414)

(assert (=> start!15414 false))

(push 1)

(check-sat)

(pop 1)

