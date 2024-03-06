; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12768 () Bool)

(assert start!12768)

(assert (=> start!12768 false))

(push 1)

(check-sat)

(pop 1)

