; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15116 () Bool)

(assert start!15116)

(assert (=> start!15116 false))

(push 1)

(check-sat)

(pop 1)

