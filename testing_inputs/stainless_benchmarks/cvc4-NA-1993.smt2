; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12934 () Bool)

(assert start!12934)

(assert (=> start!12934 false))

(push 1)

(check-sat)

(pop 1)

