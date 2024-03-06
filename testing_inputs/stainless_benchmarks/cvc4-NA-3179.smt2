; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15606 () Bool)

(assert start!15606)

(declare-fun a!223 () Int)

(assert (=> start!15606 false))

(assert (=> start!15606 true))

(push 1)

(check-sat)

(pop 1)

