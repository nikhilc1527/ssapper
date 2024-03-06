; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13976 () Bool)

(assert start!13976)

(assert (=> start!13976 false))

(push 1)

(check-sat)

(pop 1)

