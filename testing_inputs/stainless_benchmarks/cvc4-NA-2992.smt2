; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15108 () Bool)

(assert start!15108)

(assert (=> start!15108 false))

(push 1)

(check-sat)

(pop 1)

