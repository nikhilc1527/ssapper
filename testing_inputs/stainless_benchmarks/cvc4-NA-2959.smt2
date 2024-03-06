; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15042 () Bool)

(assert start!15042)

(assert (=> start!15042 false))

(assert (=> start!15042 true))

(push 1)

(check-sat)

(pop 1)

