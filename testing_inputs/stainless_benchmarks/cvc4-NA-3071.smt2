; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15296 () Bool)

(assert start!15296)

(assert (=> start!15296 false))

(push 1)

(check-sat)

(pop 1)

