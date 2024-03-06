; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15138 () Bool)

(assert start!15138)

(assert (=> start!15138 false))

(push 1)

(check-sat)

(pop 1)

