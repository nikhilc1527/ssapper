; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13770 () Bool)

(assert start!13770)

(assert (=> start!13770 false))

(assert (=> start!13770 true))

(push 1)

(check-sat)

(pop 1)

