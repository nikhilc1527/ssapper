; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15408 () Bool)

(assert start!15408)

(assert (=> start!15408 false))

(push 1)

(check-sat)

(pop 1)

