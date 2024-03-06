; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12880 () Bool)

(assert start!12880)

(assert (=> start!12880 false))

(push 1)

(check-sat)

(pop 1)

