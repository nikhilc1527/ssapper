; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12968 () Bool)

(assert start!12968)

(assert (=> start!12968 false))

(push 1)

(check-sat)

(pop 1)

