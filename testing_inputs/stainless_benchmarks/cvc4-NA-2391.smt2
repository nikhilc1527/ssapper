; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13774 () Bool)

(assert start!13774)

(assert (=> start!13774 false))

(push 1)

(check-sat)

(pop 1)

