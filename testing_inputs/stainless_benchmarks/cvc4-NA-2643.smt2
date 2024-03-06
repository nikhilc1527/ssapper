; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14312 () Bool)

(assert start!14312)

(assert (=> start!14312 false))

(push 1)

(check-sat)

(pop 1)

