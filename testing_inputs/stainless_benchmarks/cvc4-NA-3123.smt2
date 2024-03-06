; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15400 () Bool)

(assert start!15400)

(assert (=> start!15400 false))

(push 1)

(check-sat)

(pop 1)

