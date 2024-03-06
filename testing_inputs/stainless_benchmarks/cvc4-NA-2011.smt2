; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12970 () Bool)

(assert start!12970)

(assert (=> start!12970 false))

(push 1)

(check-sat)

(pop 1)

