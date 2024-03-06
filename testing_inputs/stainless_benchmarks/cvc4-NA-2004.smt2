; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12956 () Bool)

(assert start!12956)

(assert (=> start!12956 false))

(push 1)

(check-sat)

(pop 1)

