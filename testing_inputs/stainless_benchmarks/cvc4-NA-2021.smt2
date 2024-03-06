; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12990 () Bool)

(assert start!12990)

(assert (=> start!12990 false))

(push 1)

(check-sat)

(pop 1)

