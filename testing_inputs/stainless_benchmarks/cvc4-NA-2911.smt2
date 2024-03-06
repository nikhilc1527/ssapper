; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14934 () Bool)

(assert start!14934)

(assert (=> start!14934 false))

(push 1)

(check-sat)

(pop 1)

