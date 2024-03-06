; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14096 () Bool)

(assert start!14096)

(assert (=> start!14096 false))

(push 1)

(check-sat)

(pop 1)

