; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12878 () Bool)

(assert start!12878)

(assert (=> start!12878 false))

(push 1)

(check-sat)

(pop 1)

