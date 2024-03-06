; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14892 () Bool)

(assert start!14892)

(assert (=> start!14892 false))

(push 1)

(check-sat)

(pop 1)

