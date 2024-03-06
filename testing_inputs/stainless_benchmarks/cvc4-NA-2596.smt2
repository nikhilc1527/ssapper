; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14214 () Bool)

(assert start!14214)

(assert (=> start!14214 false))

(push 1)

(check-sat)

(pop 1)

