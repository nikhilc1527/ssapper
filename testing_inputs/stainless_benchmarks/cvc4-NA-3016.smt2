; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15156 () Bool)

(assert start!15156)

(assert (=> start!15156 false))

(push 1)

(check-sat)

(pop 1)

