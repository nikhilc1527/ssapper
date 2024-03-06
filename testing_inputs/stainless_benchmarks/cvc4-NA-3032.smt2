; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15218 () Bool)

(assert start!15218)

(assert (=> start!15218 false))

(push 1)

(check-sat)

(pop 1)

