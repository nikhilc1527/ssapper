; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14186 () Bool)

(assert start!14186)

(assert (=> start!14186 false))

(push 1)

(check-sat)

(pop 1)

