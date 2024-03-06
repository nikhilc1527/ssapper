; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15060 () Bool)

(assert start!15060)

(assert (=> start!15060 false))

(push 1)

(check-sat)

(pop 1)

