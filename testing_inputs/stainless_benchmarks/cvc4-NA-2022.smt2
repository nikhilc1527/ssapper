; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12992 () Bool)

(assert start!12992)

(assert (=> start!12992 false))

(push 1)

(check-sat)

(pop 1)

