; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13214 () Bool)

(assert start!13214)

(assert (=> start!13214 false))

(assert (=> start!13214 true))

(push 1)

(check-sat)

(pop 1)

