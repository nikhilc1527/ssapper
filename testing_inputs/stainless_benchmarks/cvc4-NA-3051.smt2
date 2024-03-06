; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15256 () Bool)

(assert start!15256)

(assert (=> start!15256 false))

(push 1)

(check-sat)

(pop 1)

