; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12850 () Bool)

(assert start!12850)

(assert (=> start!12850 false))

(push 1)

(check-sat)

(pop 1)

