; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15318 () Bool)

(assert start!15318)

(assert (=> start!15318 false))

(push 1)

(check-sat)

(pop 1)

