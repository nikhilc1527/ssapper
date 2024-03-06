; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15446 () Bool)

(assert start!15446)

(assert (=> start!15446 false))

(assert (=> start!15446 true))

(push 1)

(check-sat)

(pop 1)

