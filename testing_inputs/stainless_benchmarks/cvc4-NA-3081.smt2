; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15316 () Bool)

(assert start!15316)

(assert (=> start!15316 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

