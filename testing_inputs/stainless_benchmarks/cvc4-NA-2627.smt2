; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14280 () Bool)

(assert start!14280)

(assert (=> start!14280 false))

(push 1)

(check-sat)

(pop 1)

