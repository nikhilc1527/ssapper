; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15574 () Bool)

(assert start!15574)

(assert (=> start!15574 false))

(assert (=> start!15574 true))

(push 1)

(check-sat)

(pop 1)

