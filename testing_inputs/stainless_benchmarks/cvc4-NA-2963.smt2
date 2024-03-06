; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15050 () Bool)

(assert start!15050)

(assert (=> start!15050 false))

(push 1)

(check-sat)

(pop 1)

