; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14068 () Bool)

(assert start!14068)

(assert (=> start!14068 false))

(assert (=> start!14068 true))

(push 1)

(check-sat)

(pop 1)

