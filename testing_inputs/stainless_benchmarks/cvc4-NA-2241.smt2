; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13452 () Bool)

(assert start!13452)

(assert (=> start!13452 false))

(push 1)

(check-sat)

(pop 1)

