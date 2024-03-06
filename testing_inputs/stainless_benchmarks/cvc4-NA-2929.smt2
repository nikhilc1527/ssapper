; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14970 () Bool)

(assert start!14970)

(assert (=> start!14970 false))

(push 1)

(check-sat)

(pop 1)

