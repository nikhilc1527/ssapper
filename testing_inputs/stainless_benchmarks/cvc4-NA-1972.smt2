; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12892 () Bool)

(assert start!12892)

(assert (=> start!12892 false))

(push 1)

(check-sat)

(pop 1)

