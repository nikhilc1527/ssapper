; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12776 () Bool)

(assert start!12776)

(assert (=> start!12776 false))

(push 1)

(check-sat)

(pop 1)

