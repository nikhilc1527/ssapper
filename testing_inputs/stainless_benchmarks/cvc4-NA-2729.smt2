; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14510 () Bool)

(assert start!14510)

(assert (=> start!14510 false))

(push 1)

(check-sat)

(pop 1)

