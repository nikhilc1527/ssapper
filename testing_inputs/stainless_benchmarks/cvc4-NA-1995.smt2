; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12938 () Bool)

(assert start!12938)

(assert (=> start!12938 false))

(push 1)

(check-sat)

(pop 1)

