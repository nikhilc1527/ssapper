; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15388 () Bool)

(assert start!15388)

(assert (=> start!15388 false))

(assert (=> start!15388 true))

(push 1)

(check-sat)

(pop 1)

