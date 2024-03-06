; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15232 () Bool)

(assert start!15232)

(assert (=> start!15232 false))

(push 1)

(check-sat)

(pop 1)

