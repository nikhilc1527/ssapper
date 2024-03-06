; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14722 () Bool)

(assert start!14722)

(assert (=> start!14722 false))

(assert (=> start!14722 true))

(push 1)

(check-sat)

(pop 1)

