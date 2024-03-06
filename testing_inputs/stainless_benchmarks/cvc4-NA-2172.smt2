; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13314 () Bool)

(assert start!13314)

(assert (=> start!13314 false))

(push 1)

(check-sat)

(pop 1)

