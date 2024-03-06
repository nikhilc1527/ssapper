; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15052 () Bool)

(assert start!15052)

(assert (=> start!15052 false))

(push 1)

(check-sat)

(pop 1)

