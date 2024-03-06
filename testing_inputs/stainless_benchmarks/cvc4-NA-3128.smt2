; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15410 () Bool)

(assert start!15410)

(assert (=> start!15410 false))

(push 1)

(check-sat)

(pop 1)

