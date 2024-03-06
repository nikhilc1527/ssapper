; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15340 () Bool)

(assert start!15340)

(assert (=> start!15340 false))

(push 1)

(check-sat)

(pop 1)

