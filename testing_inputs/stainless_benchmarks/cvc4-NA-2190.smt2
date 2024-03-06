; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13350 () Bool)

(assert start!13350)

(assert (=> start!13350 false))

(push 1)

(check-sat)

(pop 1)

