; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13640 () Bool)

(assert start!13640)

(assert (=> start!13640 false))

(push 1)

(check-sat)

(pop 1)

