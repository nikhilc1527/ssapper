; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15058 () Bool)

(assert start!15058)

(assert (=> start!15058 false))

(push 1)

(check-sat)

(pop 1)

