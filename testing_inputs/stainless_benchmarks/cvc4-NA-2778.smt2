; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14620 () Bool)

(assert start!14620)

(assert (=> start!14620 false))

(push 1)

(check-sat)

(pop 1)

