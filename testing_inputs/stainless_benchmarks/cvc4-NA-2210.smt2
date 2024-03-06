; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13390 () Bool)

(assert start!13390)

(assert (=> start!13390 false))

(push 1)

(check-sat)

(pop 1)

