; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14284 () Bool)

(assert start!14284)

(assert (=> start!14284 false))

(push 1)

(check-sat)

(pop 1)

