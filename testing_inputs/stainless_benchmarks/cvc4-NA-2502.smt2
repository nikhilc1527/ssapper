; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14026 () Bool)

(assert start!14026)

(assert (=> start!14026 false))

(assert (=> start!14026 true))

(push 1)

(check-sat)

(pop 1)

