; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15032 () Bool)

(assert start!15032)

(assert (=> start!15032 false))

(push 1)

(check-sat)

(pop 1)

