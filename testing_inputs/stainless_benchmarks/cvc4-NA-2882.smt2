; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14864 () Bool)

(assert start!14864)

(assert (=> start!14864 false))

(push 1)

(check-sat)

(pop 1)

