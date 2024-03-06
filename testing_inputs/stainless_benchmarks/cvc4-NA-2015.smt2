; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12978 () Bool)

(assert start!12978)

(assert (=> start!12978 false))

(push 1)

(check-sat)

(pop 1)

