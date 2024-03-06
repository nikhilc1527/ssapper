; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15026 () Bool)

(assert start!15026)

(assert (=> start!15026 false))

(push 1)

(check-sat)

(pop 1)

