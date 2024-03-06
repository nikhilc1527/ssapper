; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14396 () Bool)

(assert start!14396)

(assert (=> start!14396 false))

(assert (=> start!14396 true))

(push 1)

(check-sat)

(pop 1)

