; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15248 () Bool)

(assert start!15248)

(assert (=> start!15248 false))

(push 1)

(check-sat)

(pop 1)

