; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14888 () Bool)

(assert start!14888)

(assert (=> start!14888 false))

(push 1)

(check-sat)

(pop 1)

