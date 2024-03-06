; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15336 () Bool)

(assert start!15336)

(assert (=> start!15336 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

