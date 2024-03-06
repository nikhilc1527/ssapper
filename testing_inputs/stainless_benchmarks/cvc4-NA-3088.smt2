; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15330 () Bool)

(assert start!15330)

(assert (=> start!15330 false))

(push 1)

(check-sat)

(pop 1)

