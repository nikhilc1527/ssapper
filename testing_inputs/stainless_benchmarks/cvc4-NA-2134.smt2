; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13238 () Bool)

(assert start!13238)

(assert (=> start!13238 false))

(push 1)

(check-sat)

(pop 1)

