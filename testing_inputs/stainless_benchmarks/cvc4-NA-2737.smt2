; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14526 () Bool)

(assert start!14526)

(assert (=> start!14526 false))

(push 1)

(check-sat)

(pop 1)

