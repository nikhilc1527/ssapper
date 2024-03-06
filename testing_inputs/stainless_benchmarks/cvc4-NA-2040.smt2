; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13028 () Bool)

(assert start!13028)

(assert (=> start!13028 false))

(push 1)

(check-sat)

(pop 1)

