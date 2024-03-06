; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14262 () Bool)

(assert start!14262)

(assert (=> start!14262 false))

(push 1)

(check-sat)

(pop 1)

