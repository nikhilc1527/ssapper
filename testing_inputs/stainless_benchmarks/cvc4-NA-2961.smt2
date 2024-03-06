; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15046 () Bool)

(assert start!15046)

(assert (=> start!15046 false))

(push 1)

(check-sat)

(pop 1)

