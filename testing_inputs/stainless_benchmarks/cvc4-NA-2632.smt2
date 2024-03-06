; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14290 () Bool)

(assert start!14290)

(assert (=> start!14290 false))

(assert (=> start!14290 true))

(push 1)

(check-sat)

(pop 1)

