; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13294 () Bool)

(assert start!13294)

(assert (=> start!13294 false))

(push 1)

(check-sat)

(pop 1)

