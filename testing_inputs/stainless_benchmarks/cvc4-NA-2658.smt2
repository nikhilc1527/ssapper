; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14342 () Bool)

(assert start!14342)

(assert (=> start!14342 false))

(push 1)

(check-sat)

(pop 1)

