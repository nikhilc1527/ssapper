; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12806 () Bool)

(assert start!12806)

(assert (=> start!12806 false))

(push 1)

(check-sat)

(pop 1)

