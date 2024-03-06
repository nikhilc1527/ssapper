; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15402 () Bool)

(assert start!15402)

(assert (=> start!15402 false))

(push 1)

(check-sat)

(pop 1)

