; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15362 () Bool)

(assert start!15362)

(assert (=> start!15362 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

