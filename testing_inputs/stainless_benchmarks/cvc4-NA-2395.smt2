; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13782 () Bool)

(assert start!13782)

(assert (=> start!13782 false))

(push 1)

(check-sat)

(pop 1)

