; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12888 () Bool)

(assert start!12888)

(assert (=> start!12888 false))

(push 1)

(check-sat)

(pop 1)

