; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14130 () Bool)

(assert start!14130)

(assert (=> start!14130 false))

(push 1)

(check-sat)

(pop 1)

