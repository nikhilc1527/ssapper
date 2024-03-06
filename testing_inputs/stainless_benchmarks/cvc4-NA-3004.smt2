; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15132 () Bool)

(assert start!15132)

(assert (=> start!15132 false))

(push 1)

(check-sat)

(pop 1)

