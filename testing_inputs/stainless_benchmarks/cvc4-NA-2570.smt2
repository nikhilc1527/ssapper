; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14162 () Bool)

(assert start!14162)

(assert (=> start!14162 false))

(push 1)

(check-sat)

(pop 1)

