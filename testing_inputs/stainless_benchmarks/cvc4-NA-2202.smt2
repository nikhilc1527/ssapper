; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13374 () Bool)

(assert start!13374)

(assert (=> start!13374 false))

(push 1)

(check-sat)

(pop 1)

