; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13712 () Bool)

(assert start!13712)

(assert (=> start!13712 false))

(push 1)

(check-sat)

(pop 1)

