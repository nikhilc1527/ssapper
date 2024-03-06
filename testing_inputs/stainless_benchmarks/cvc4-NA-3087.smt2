; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15328 () Bool)

(assert start!15328)

(assert (=> start!15328 false))

(push 1)

(check-sat)

(pop 1)

