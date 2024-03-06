; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12908 () Bool)

(assert start!12908)

(assert (=> start!12908 false))

(push 1)

(check-sat)

(pop 1)

