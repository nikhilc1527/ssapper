; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13550 () Bool)

(assert start!13550)

(assert (=> start!13550 false))

(push 1)

(check-sat)

(pop 1)

