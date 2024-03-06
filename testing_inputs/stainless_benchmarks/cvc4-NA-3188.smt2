; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15644 () Bool)

(assert start!15644)

(assert (=> start!15644 false))

(assert (=> start!15644 true))

(push 1)

(check-sat)

(pop 1)

