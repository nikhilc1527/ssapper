; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12946 () Bool)

(assert start!12946)

(assert (=> start!12946 false))

(push 1)

(check-sat)

(pop 1)

