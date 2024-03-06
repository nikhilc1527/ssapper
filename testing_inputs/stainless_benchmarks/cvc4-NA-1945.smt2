; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12838 () Bool)

(assert start!12838)

(assert (=> start!12838 false))

(push 1)

(check-sat)

(pop 1)

