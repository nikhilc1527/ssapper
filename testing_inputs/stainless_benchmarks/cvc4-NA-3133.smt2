; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15420 () Bool)

(assert start!15420)

(assert (=> start!15420 false))

(push 1)

(check-sat)

(pop 1)

