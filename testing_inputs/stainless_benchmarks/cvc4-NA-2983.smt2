; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15090 () Bool)

(assert start!15090)

(assert (=> start!15090 false))

(push 1)

(check-sat)

(pop 1)

