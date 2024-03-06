; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15136 () Bool)

(assert start!15136)

(assert (=> start!15136 false))

(push 1)

(check-sat)

(pop 1)

