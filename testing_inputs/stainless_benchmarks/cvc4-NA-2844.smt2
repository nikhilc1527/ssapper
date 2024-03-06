; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14776 () Bool)

(assert start!14776)

(assert (=> start!14776 false))

(assert (=> start!14776 true))

(push 1)

(check-sat)

(pop 1)

