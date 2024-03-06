; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15356 () Bool)

(assert start!15356)

(assert (=> start!15356 false))

(push 1)

(check-sat)

(pop 1)

