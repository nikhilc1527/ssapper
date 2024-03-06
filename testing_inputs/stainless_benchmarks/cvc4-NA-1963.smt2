; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12874 () Bool)

(assert start!12874)

(assert (=> start!12874 false))

(push 1)

(check-sat)

(pop 1)

