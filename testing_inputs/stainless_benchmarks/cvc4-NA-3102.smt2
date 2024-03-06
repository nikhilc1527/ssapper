; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15358 () Bool)

(assert start!15358)

(assert (=> start!15358 false))

(push 1)

(check-sat)

(pop 1)

