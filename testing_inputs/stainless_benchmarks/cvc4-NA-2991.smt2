; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15106 () Bool)

(assert start!15106)

(assert (=> start!15106 false))

(push 1)

(check-sat)

(pop 1)

