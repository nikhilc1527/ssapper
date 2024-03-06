; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15238 () Bool)

(assert start!15238)

(assert (=> start!15238 false))

(push 1)

(check-sat)

(pop 1)

