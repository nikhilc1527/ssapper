; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15284 () Bool)

(assert start!15284)

(assert (=> start!15284 false))

(assert (=> start!15284 true))

(push 1)

(check-sat)

(pop 1)

