; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13804 () Bool)

(assert start!13804)

(assert (=> start!13804 false))

(push 1)

(check-sat)

(pop 1)

