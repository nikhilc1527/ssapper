; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15024 () Bool)

(assert start!15024)

(assert (=> start!15024 false))

(push 1)

(check-sat)

(pop 1)

