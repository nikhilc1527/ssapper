; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15068 () Bool)

(assert start!15068)

(assert (=> start!15068 false))

(push 1)

(check-sat)

(pop 1)

