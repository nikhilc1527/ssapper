; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14714 () Bool)

(assert start!14714)

(assert (=> start!14714 false))

(assert (=> start!14714 true))

(push 1)

(check-sat)

(pop 1)

