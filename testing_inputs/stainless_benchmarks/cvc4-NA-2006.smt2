; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12960 () Bool)

(assert start!12960)

(assert (=> start!12960 false))

(push 1)

(check-sat)

(pop 1)

