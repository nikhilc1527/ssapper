; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15396 () Bool)

(assert start!15396)

(assert (=> start!15396 false))

(assert (=> start!15396 true))

(push 1)

(check-sat)

(pop 1)

