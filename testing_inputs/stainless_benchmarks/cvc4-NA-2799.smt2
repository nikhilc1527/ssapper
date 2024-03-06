; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14662 () Bool)

(assert start!14662)

(assert (=> start!14662 false))

(push 1)

(check-sat)

(pop 1)

