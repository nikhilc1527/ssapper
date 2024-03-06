; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12834 () Bool)

(assert start!12834)

(assert (=> start!12834 false))

(assert (=> start!12834 true))

(push 1)

(check-sat)

(pop 1)

