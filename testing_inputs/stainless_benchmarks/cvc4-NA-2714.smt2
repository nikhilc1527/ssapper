; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14480 () Bool)

(assert start!14480)

(assert (=> start!14480 false))

(assert (=> start!14480 true))

(push 1)

(check-sat)

(pop 1)

