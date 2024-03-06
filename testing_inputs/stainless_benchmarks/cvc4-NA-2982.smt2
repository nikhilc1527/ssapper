; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15088 () Bool)

(assert start!15088)

(assert (=> start!15088 false))

(push 1)

(check-sat)

(pop 1)

