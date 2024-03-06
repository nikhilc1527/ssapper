; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15062 () Bool)

(assert start!15062)

(assert (=> start!15062 false))

(push 1)

(check-sat)

(pop 1)

