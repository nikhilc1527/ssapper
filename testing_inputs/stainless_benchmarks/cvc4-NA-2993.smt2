; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15110 () Bool)

(assert start!15110)

(assert (=> start!15110 false))

(push 1)

(check-sat)

(pop 1)

