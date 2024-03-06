; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12964 () Bool)

(assert start!12964)

(assert (=> start!12964 false))

(push 1)

(check-sat)

(pop 1)

