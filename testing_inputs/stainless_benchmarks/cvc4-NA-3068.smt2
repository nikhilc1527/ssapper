; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15290 () Bool)

(assert start!15290)

(assert (=> start!15290 false))

(push 1)

(check-sat)

(pop 1)

