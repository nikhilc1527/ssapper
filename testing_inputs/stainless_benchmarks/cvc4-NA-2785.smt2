; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14634 () Bool)

(assert start!14634)

(assert (=> start!14634 false))

(push 1)

(check-sat)

(pop 1)

