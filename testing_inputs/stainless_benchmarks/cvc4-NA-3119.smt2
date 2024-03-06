; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15392 () Bool)

(assert start!15392)

(assert (=> start!15392 false))

(push 1)

(check-sat)

(pop 1)

