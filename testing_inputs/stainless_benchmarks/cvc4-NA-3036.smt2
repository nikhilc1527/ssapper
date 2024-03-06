; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15226 () Bool)

(assert start!15226)

(assert (=> start!15226 false))

(assert (=> start!15226 true))

(push 1)

(check-sat)

(pop 1)

