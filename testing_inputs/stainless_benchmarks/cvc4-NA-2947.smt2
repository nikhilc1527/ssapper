; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15018 () Bool)

(assert start!15018)

(assert (=> start!15018 false))

(push 1)

(check-sat)

(pop 1)

