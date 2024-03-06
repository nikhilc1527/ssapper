; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14030 () Bool)

(assert start!14030)

(assert (=> start!14030 false))

(push 1)

(check-sat)

(pop 1)

