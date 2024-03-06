; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15020 () Bool)

(assert start!15020)

(assert (=> start!15020 false))

(push 1)

(check-sat)

(pop 1)

