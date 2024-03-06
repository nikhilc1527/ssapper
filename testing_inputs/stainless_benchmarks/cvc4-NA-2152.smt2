; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13274 () Bool)

(assert start!13274)

(assert (=> start!13274 false))

(push 1)

(check-sat)

(pop 1)

