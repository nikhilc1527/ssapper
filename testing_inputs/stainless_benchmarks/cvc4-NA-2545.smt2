; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14112 () Bool)

(assert start!14112)

(assert (=> start!14112 false))

(push 1)

(check-sat)

(pop 1)

