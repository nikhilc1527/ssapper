; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15240 () Bool)

(assert start!15240)

(assert (=> start!15240 false))

(push 1)

(check-sat)

(pop 1)

