; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13754 () Bool)

(assert start!13754)

(assert (=> start!13754 false))

(push 1)

(check-sat)

(pop 1)

