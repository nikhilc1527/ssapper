; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15250 () Bool)

(assert start!15250)

(assert (=> start!15250 false))

(push 1)

(check-sat)

(pop 1)

