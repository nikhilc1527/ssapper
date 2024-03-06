; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14332 () Bool)

(assert start!14332)

(assert (=> start!14332 false))

(push 1)

(check-sat)

(pop 1)

