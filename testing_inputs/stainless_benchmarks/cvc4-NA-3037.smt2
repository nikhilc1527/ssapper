; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15228 () Bool)

(assert start!15228)

(assert (=> start!15228 false))

(assert (=> start!15228 true))

(push 1)

(check-sat)

(pop 1)

