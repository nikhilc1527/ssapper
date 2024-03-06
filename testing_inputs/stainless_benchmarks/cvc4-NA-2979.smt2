; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15082 () Bool)

(assert start!15082)

(assert (=> start!15082 false))

(push 1)

(check-sat)

(pop 1)

