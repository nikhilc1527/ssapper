; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14496 () Bool)

(assert start!14496)

(assert (=> start!14496 false))

(push 1)

(check-sat)

(pop 1)

