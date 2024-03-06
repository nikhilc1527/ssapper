; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15160 () Bool)

(assert start!15160)

(assert (=> start!15160 false))

(push 1)

(check-sat)

(pop 1)

