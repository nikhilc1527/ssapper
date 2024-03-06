; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14976 () Bool)

(assert start!14976)

(assert (=> start!14976 false))

(push 1)

(check-sat)

(pop 1)

