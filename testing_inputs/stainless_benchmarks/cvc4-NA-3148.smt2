; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15454 () Bool)

(assert start!15454)

(assert (=> start!15454 false))

(push 1)

(check-sat)

(pop 1)

