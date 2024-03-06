; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15306 () Bool)

(assert start!15306)

(assert (=> start!15306 false))

(push 1)

(check-sat)

(pop 1)

