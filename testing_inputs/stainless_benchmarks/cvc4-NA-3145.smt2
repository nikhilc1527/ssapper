; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15448 () Bool)

(assert start!15448)

(assert (=> start!15448 false))

(assert (=> start!15448 true))

(push 1)

(check-sat)

(pop 1)

