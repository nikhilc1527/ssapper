; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12928 () Bool)

(assert start!12928)

(assert (=> start!12928 false))

(push 1)

(check-sat)

(pop 1)

