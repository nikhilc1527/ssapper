; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12808 () Bool)

(assert start!12808)

(assert (=> start!12808 false))

(push 1)

(check-sat)

(pop 1)

