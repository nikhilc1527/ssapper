; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13318 () Bool)

(assert start!13318)

(assert (=> start!13318 false))

(assert (=> start!13318 true))

(push 1)

(check-sat)

(pop 1)

