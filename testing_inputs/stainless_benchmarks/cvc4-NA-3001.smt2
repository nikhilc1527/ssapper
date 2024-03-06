; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15126 () Bool)

(assert start!15126)

(assert (=> start!15126 false))

(push 1)

(check-sat)

(pop 1)

