; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12932 () Bool)

(assert start!12932)

(assert (=> start!12932 false))

(push 1)

(check-sat)

(pop 1)

