; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13844 () Bool)

(assert start!13844)

(assert (=> start!13844 false))

(push 1)

(check-sat)

(pop 1)

