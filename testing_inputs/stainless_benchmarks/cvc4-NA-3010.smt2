; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15144 () Bool)

(assert start!15144)

(assert (=> start!15144 false))

(push 1)

(check-sat)

(pop 1)

