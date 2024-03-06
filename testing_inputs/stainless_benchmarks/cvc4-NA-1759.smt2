; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12090 () Bool)

(assert start!12090)

(assert (=> start!12090 false))

(assert (=> start!12090 true))

(push 1)

(check-sat)

(pop 1)

