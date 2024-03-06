; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15040 () Bool)

(assert start!15040)

(assert (=> start!15040 false))

(assert (=> start!15040 true))

(push 1)

(check-sat)

(pop 1)

