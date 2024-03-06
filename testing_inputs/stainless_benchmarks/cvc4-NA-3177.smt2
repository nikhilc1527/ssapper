; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15602 () Bool)

(assert start!15602)

(assert (=> start!15602 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

