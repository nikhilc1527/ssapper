; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15430 () Bool)

(assert start!15430)

(assert (=> start!15430 false))

(push 1)

(check-sat)

(pop 1)

