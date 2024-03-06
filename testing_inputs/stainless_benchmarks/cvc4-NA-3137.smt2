; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15428 () Bool)

(assert start!15428)

(assert (=> start!15428 false))

(push 1)

(check-sat)

(pop 1)

