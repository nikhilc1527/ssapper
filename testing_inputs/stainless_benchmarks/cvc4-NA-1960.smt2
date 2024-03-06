; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12868 () Bool)

(assert start!12868)

(assert (=> start!12868 false))

(push 1)

(check-sat)

(pop 1)

