; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15310 () Bool)

(assert start!15310)

(assert (=> start!15310 false))

(push 1)

(check-sat)

(pop 1)

