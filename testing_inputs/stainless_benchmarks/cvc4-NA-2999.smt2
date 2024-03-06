; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15122 () Bool)

(assert start!15122)

(assert (=> start!15122 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

