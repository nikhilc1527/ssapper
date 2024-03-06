; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15426 () Bool)

(assert start!15426)

(assert (=> start!15426 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

