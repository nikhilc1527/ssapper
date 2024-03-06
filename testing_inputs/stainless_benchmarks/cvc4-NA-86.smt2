; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!612 () Bool)

(assert start!612)

(assert (=> start!612 false))

(push 1)

(check-sat)

(pop 1)

