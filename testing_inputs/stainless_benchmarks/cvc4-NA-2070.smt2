; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13092 () Bool)

(assert start!13092)

(assert (=> start!13092 false))

(assert (=> start!13092 true))

(push 1)

(check-sat)

(pop 1)

