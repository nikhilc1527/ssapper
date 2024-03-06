; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15124 () Bool)

(assert start!15124)

(assert (=> start!15124 false))

(push 1)

(check-sat)

(pop 1)

