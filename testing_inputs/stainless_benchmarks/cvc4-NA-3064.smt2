; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15282 () Bool)

(assert start!15282)

(assert (=> start!15282 false))

(push 1)

(check-sat)

(pop 1)

