; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14412 () Bool)

(assert start!14412)

(assert (=> start!14412 false))

(push 1)

(check-sat)

(pop 1)

