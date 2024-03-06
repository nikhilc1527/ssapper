; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14276 () Bool)

(assert start!14276)

(assert (=> start!14276 false))

(push 1)

(check-sat)

(pop 1)

