; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15352 () Bool)

(assert start!15352)

(assert (=> start!15352 false))

(push 1)

(check-sat)

(pop 1)

