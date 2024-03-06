; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15038 () Bool)

(assert start!15038)

(assert (=> start!15038 false))

(assert (=> start!15038 true))

(push 1)

(check-sat)

(pop 1)

