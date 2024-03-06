; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14194 () Bool)

(assert start!14194)

(assert (=> start!14194 false))

(push 1)

(check-sat)

(pop 1)

