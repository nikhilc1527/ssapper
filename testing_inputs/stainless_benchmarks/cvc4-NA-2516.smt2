; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14054 () Bool)

(assert start!14054)

(assert (=> start!14054 false))

(push 1)

(check-sat)

(pop 1)

