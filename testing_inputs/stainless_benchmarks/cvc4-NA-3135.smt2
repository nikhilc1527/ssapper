; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15424 () Bool)

(assert start!15424)

(assert (=> start!15424 false))

(push 1)

(check-sat)

(pop 1)

