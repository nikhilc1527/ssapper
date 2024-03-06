; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15084 () Bool)

(assert start!15084)

(assert (=> start!15084 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

