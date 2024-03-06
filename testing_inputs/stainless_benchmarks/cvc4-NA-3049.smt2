; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15252 () Bool)

(assert start!15252)

(assert (=> start!15252 false))

(push 1)

(check-sat)

(pop 1)

