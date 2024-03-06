; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15266 () Bool)

(assert start!15266)

(assert (=> start!15266 false))

(push 1)

(check-sat)

(pop 1)

