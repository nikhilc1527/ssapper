; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15304 () Bool)

(assert start!15304)

(assert (=> start!15304 false))

(push 1)

(check-sat)

(pop 1)

