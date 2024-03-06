; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14728 () Bool)

(assert start!14728)

(assert (=> start!14728 false))

(assert (=> start!14728 true))

(push 1)

(check-sat)

(pop 1)

