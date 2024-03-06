; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12856 () Bool)

(assert start!12856)

(assert (=> start!12856 false))

(push 1)

(check-sat)

(pop 1)

