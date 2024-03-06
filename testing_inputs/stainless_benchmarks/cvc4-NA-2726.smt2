; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14504 () Bool)

(assert start!14504)

(assert (=> start!14504 false))

(push 1)

(check-sat)

(pop 1)

