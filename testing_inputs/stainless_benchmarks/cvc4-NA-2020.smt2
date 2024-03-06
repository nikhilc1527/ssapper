; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12988 () Bool)

(assert start!12988)

(assert (=> start!12988 false))

(assert (=> start!12988 true))

(push 1)

(check-sat)

(pop 1)

