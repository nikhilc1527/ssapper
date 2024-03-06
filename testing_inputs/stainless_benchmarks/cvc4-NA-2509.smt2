; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14040 () Bool)

(assert start!14040)

(assert (=> start!14040 false))

(push 1)

(check-sat)

(pop 1)

