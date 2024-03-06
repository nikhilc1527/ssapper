; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13468 () Bool)

(assert start!13468)

(assert (=> start!13468 false))

(push 1)

(check-sat)

(pop 1)

