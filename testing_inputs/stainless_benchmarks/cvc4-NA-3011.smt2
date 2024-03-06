; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15146 () Bool)

(assert start!15146)

(assert (=> start!15146 false))

(push 1)

(check-sat)

(pop 1)

