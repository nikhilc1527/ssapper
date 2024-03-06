; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15312 () Bool)

(assert start!15312)

(assert (=> start!15312 false))

(push 1)

(check-sat)

(pop 1)

