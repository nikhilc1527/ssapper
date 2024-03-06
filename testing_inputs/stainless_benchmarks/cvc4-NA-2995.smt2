; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15114 () Bool)

(assert start!15114)

(assert (=> start!15114 false))

(push 1)

(check-sat)

(pop 1)

