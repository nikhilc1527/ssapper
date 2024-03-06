; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13964 () Bool)

(assert start!13964)

(assert (=> start!13964 false))

(assert (=> start!13964 true))

(push 1)

(check-sat)

(pop 1)

