; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14110 () Bool)

(assert start!14110)

(assert (=> start!14110 false))

(push 1)

(check-sat)

(pop 1)

