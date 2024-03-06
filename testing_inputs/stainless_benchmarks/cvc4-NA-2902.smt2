; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14904 () Bool)

(assert start!14904)

(assert (=> start!14904 false))

(push 1)

(check-sat)

(pop 1)

