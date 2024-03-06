; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15270 () Bool)

(assert start!15270)

(assert (=> start!15270 false))

(push 1)

(check-sat)

(pop 1)

