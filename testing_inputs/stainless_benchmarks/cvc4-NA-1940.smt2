; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12828 () Bool)

(assert start!12828)

(assert (=> start!12828 false))

(push 1)

(check-sat)

(pop 1)

