; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12840 () Bool)

(assert start!12840)

(assert (=> start!12840 false))

(push 1)

(check-sat)

(pop 1)

