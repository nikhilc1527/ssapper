; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15300 () Bool)

(assert start!15300)

(assert (=> start!15300 false))

(push 1)

(check-sat)

(pop 1)

