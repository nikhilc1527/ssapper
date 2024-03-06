; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15104 () Bool)

(assert start!15104)

(assert (=> start!15104 false))

(push 1)

(check-sat)

(pop 1)

