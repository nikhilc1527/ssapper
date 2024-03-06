; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15092 () Bool)

(assert start!15092)

(assert (=> start!15092 false))

(push 1)

(check-sat)

(pop 1)

