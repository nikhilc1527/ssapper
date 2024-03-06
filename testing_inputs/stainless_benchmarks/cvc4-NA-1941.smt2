; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12830 () Bool)

(assert start!12830)

(assert (=> start!12830 false))

(assert (=> start!12830 true))

(push 1)

(check-sat)

(pop 1)

