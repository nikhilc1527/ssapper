; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12886 () Bool)

(assert start!12886)

(assert (=> start!12886 false))

(assert (=> start!12886 true))

(push 1)

(check-sat)

(pop 1)

