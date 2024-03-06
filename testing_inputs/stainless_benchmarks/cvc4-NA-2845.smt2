; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14778 () Bool)

(assert start!14778)

(assert (=> start!14778 false))

(assert (=> start!14778 true))

(push 1)

(check-sat)

(pop 1)

