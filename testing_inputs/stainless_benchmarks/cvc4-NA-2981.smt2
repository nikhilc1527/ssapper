; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15086 () Bool)

(assert start!15086)

(assert (=> start!15086 false))

(push 1)

(check-sat)

(pop 1)

