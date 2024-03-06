; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15350 () Bool)

(assert start!15350)

(assert (=> start!15350 false))

(push 1)

(check-sat)

(pop 1)

