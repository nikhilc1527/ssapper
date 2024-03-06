; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15386 () Bool)

(assert start!15386)

(assert (=> start!15386 false))

(assert (=> start!15386 true))

(push 1)

(check-sat)

(pop 1)

