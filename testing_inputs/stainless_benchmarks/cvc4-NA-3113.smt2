; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15380 () Bool)

(assert start!15380)

(assert (=> start!15380 false))

(push 1)

(check-sat)

(pop 1)

