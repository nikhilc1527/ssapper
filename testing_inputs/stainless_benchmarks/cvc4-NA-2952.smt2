; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15028 () Bool)

(assert start!15028)

(assert (=> start!15028 false))

(push 1)

(check-sat)

(pop 1)

