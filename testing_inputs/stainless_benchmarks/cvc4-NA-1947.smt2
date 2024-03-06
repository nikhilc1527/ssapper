; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12842 () Bool)

(assert start!12842)

(assert (=> start!12842 false))

(push 1)

(check-sat)

(pop 1)

