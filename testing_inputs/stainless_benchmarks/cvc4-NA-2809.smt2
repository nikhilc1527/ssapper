; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14694 () Bool)

(assert start!14694)

(assert (=> start!14694 false))

(assert (=> start!14694 true))

(push 1)

(check-sat)

(pop 1)

