; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14730 () Bool)

(assert start!14730)

(assert (=> start!14730 false))

(assert (=> start!14730 true))

(push 1)

(check-sat)

(pop 1)

