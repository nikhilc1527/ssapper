; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13962 () Bool)

(assert start!13962)

(assert (=> start!13962 false))

(push 1)

(check-sat)

(pop 1)

