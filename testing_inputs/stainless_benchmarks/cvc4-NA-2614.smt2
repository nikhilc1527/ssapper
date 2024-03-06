; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14250 () Bool)

(assert start!14250)

(assert (=> start!14250 false))

(push 1)

(check-sat)

(pop 1)

