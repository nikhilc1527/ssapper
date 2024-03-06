; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12942 () Bool)

(assert start!12942)

(assert (=> start!12942 false))

(push 1)

(check-sat)

(pop 1)

