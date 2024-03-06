; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12972 () Bool)

(assert start!12972)

(assert (=> start!12972 false))

(push 1)

(check-sat)

(pop 1)

