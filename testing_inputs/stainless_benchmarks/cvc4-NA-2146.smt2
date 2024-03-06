; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13262 () Bool)

(assert start!13262)

(assert (=> start!13262 false))

(push 1)

(check-sat)

(pop 1)

