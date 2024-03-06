; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15322 () Bool)

(assert start!15322)

(assert (=> start!15322 false))

(assert (=> start!15322 true))

(push 1)

(check-sat)

(pop 1)

