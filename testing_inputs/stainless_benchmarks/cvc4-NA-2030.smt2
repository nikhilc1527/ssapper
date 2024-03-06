; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13008 () Bool)

(assert start!13008)

(assert (=> start!13008 false))

(push 1)

(check-sat)

(pop 1)

