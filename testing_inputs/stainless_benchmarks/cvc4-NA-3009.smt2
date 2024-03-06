; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15142 () Bool)

(assert start!15142)

(assert (=> start!15142 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

