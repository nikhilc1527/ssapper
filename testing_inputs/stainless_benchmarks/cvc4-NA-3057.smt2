; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15268 () Bool)

(assert start!15268)

(assert (=> start!15268 false))

(push 1)

(check-sat)

(pop 1)

