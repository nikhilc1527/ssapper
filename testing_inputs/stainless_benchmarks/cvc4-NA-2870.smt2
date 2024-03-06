; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14840 () Bool)

(assert start!14840)

(assert (=> start!14840 false))

(push 1)

(check-sat)

(pop 1)

