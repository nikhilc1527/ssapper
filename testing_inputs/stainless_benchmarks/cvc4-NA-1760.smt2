; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12092 () Bool)

(assert start!12092)

(assert (=> start!12092 false))

(push 1)

(check-sat)

(pop 1)

