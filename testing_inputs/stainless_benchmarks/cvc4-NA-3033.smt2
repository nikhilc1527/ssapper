; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15220 () Bool)

(assert start!15220)

(assert (=> start!15220 false))

(push 1)

(check-sat)

(pop 1)

