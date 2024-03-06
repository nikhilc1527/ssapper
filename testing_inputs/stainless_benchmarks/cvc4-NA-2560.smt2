; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14142 () Bool)

(assert start!14142)

(assert (=> start!14142 false))

(push 1)

(check-sat)

(pop 1)

