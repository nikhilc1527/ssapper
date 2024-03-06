; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15066 () Bool)

(assert start!15066)

(assert (=> start!15066 false))

(push 1)

(check-sat)

(pop 1)

