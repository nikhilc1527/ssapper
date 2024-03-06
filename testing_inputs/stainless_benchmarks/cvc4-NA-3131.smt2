; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15416 () Bool)

(assert start!15416)

(assert (=> start!15416 false))

(push 1)

(check-sat)

(pop 1)

