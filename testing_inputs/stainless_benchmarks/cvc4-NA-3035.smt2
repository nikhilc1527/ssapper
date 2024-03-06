; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15224 () Bool)

(assert start!15224)

(assert (=> start!15224 false))

(assert (=> start!15224 true))

(push 1)

(check-sat)

(pop 1)

