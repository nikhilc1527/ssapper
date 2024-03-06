; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14320 () Bool)

(assert start!14320)

(assert (=> start!14320 false))

(assert (=> start!14320 true))

(push 1)

(check-sat)

(pop 1)

