; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12816 () Bool)

(assert start!12816)

(assert (=> start!12816 false))

(assert (=> start!12816 true))

(push 1)

(check-sat)

(pop 1)

