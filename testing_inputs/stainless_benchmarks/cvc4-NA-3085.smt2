; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15324 () Bool)

(assert start!15324)

(assert (=> start!15324 false))

(push 1)

(check-sat)

(pop 1)

