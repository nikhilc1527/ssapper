; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12870 () Bool)

(assert start!12870)

(assert (=> start!12870 false))

(push 1)

(check-sat)

(pop 1)

