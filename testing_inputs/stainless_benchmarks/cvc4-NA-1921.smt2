; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12778 () Bool)

(assert start!12778)

(assert (=> start!12778 false))

(push 1)

(check-sat)

(pop 1)

