; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14780 () Bool)

(assert start!14780)

(assert (=> start!14780 false))

(assert (=> start!14780 true))

(push 1)

(check-sat)

(pop 1)

