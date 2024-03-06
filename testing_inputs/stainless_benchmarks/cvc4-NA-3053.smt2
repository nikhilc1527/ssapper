; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15260 () Bool)

(assert start!15260)

(assert (=> start!15260 false))

(push 1)

(check-sat)

(pop 1)

