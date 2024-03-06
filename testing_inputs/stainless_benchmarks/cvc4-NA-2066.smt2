; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13084 () Bool)

(assert start!13084)

(assert (=> start!13084 false))

(push 1)

(check-sat)

(pop 1)

