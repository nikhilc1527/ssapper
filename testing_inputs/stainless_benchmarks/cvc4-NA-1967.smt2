; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12882 () Bool)

(assert start!12882)

(assert (=> start!12882 false))

(push 1)

(check-sat)

(pop 1)

