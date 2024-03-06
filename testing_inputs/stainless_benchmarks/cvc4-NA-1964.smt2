; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12876 () Bool)

(assert start!12876)

(assert (=> start!12876 false))

(push 1)

(check-sat)

(pop 1)

