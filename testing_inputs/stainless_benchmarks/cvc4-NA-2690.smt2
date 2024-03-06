; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14424 () Bool)

(assert start!14424)

(assert (=> start!14424 false))

(push 1)

(check-sat)

(pop 1)

