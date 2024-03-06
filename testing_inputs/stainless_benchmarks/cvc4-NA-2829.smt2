; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14734 () Bool)

(assert start!14734)

(assert (=> start!14734 false))

(assert (=> start!14734 true))

(push 1)

(check-sat)

(pop 1)

