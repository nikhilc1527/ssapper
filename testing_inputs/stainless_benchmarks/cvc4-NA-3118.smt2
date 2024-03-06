; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15390 () Bool)

(assert start!15390)

(assert (=> start!15390 false))

(push 1)

(check-sat)

(pop 1)

