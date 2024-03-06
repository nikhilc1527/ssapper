; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14568 () Bool)

(assert start!14568)

(assert (=> start!14568 false))

(push 1)

(check-sat)

(pop 1)

