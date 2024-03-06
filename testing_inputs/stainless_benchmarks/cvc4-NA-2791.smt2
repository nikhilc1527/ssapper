; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14646 () Bool)

(assert start!14646)

(assert (=> start!14646 false))

(push 1)

(check-sat)

(pop 1)

