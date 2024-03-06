; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14240 () Bool)

(assert start!14240)

(assert (=> start!14240 false))

(push 1)

(check-sat)

(pop 1)

