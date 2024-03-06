; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15216 () Bool)

(assert start!15216)

(assert (=> start!15216 false))

(assert (=> start!15216 true))

(push 1)

(check-sat)

(pop 1)

