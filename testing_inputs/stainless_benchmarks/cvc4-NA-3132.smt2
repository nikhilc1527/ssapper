; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15418 () Bool)

(assert start!15418)

(assert (=> start!15418 false))

(push 1)

(check-sat)

(pop 1)

