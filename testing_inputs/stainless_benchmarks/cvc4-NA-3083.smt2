; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15320 () Bool)

(assert start!15320)

(assert (=> start!15320 false))

(push 1)

(check-sat)

(pop 1)

